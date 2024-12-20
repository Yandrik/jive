import 'dart:async';
import 'dart:io';

import 'package:jive_app/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:anyhow/anyhow.dart';

abstract class Transport {
  Future<Result<void>> connect();
  Future<Result<void>> disconnect();
  Future<Result<void>> send(dynamic message);
  void onReceive(Function(dynamic message) callback);
  void onDisconnect(Function() callback);
  Future<void> dispose();
  bool get isConnected;
}

class WebSocketTransport implements Transport {
  WebSocketChannel? _channel;
  Function(dynamic)? _onReceiveCallback;
  Function()? _onDisconnectCallback;
  final String _url;
  bool _connected = false;
  bool _disposed = false;

  WebSocketTransport(this._url);

  @override
  bool get isConnected => _connected;

  @override
  Future<Result<void>> connect() async {
    if (_disposed) return bail('Transport disposed', StackTrace.current);

    try {
      _channel = WebSocketChannel.connect(Uri.parse(_url));
      await _channel!.ready;
      _connected = true;

      _channel!.stream.listen((message) {
        if (_onReceiveCallback != null) {
          _onReceiveCallback!(message);
        }
      }, onDone: () {
        _connected = false;
        if (_onDisconnectCallback != null) {
          _onDisconnectCallback!();
        }
      }, onError: (error) {
        _connected = false;
        if (_onDisconnectCallback != null) {
          _onDisconnectCallback!();
        }
        final errorMsg =
            error is WebSocketException ? error.message : error.toString();
        logger.i("WebSocket connection error: $errorMsg");
      });
      return Ok(null);
    } catch (e, st) {
      if (e is WebSocketException) {
        return bail("Failed to connect: ${e.message}", st);
      } else {
        return bail("Failed to connect: ${e.toString()}", st);
      }
    }
  }

  @override
  Future<Result<void>> disconnect() async {
    try {
      await _channel?.sink.close();
      _connected = false;
      if (_onDisconnectCallback != null) {
        _onDisconnectCallback!();
      }
      return Ok(null);
    } catch (e, st) {
      return bail("Failed to disconnect: ${e.toString()}", st);
    }
  }

  @override
  Future<Result<void>> send(dynamic message) async {
    if (!_connected) {
      return bail('Not connected', StackTrace.current);
    }
    try {
      _channel?.sink.add(message);
      return Ok(null);
    } catch (e, st) {
      return bail("Failed to send message: $e", st);
    }
  }

  @override
  void onReceive(Function(dynamic message) callback) {
    _onReceiveCallback = callback;
  }

  @override
  void onDisconnect(Function() callback) {
    _onDisconnectCallback = callback;
  }

  @override
  Future<void> dispose() async {
    _disposed = true;
    _onReceiveCallback = null;
    _onDisconnectCallback = null;
    await disconnect();
  }
}
