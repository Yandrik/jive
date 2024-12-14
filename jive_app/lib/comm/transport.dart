import 'package:jive_app/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:anyhow/anyhow.dart';

abstract class Transport {
  Future<Result<void>> connect();
  Future<Result<void>> disconnect();
  Future<Result<void>> send(dynamic message);
  void onReceive(Function(dynamic message) callback);
  bool get isConnected;
}

class WebSocketTransport implements Transport {
  WebSocketChannel? _channel;
  Function(dynamic)? _onReceiveCallback;
  final String _url;
  bool _connected = false;

  WebSocketTransport(this._url);

  @override
  bool get isConnected => _connected;

  @override
  Future<Result<void>> connect() async {
    try {
      _channel = WebSocketChannel.connect(Uri.parse(_url));
      _connected = true;

      _channel!.stream.listen(
        (message) {
          if (_onReceiveCallback != null) {
            _onReceiveCallback!(message);
          }
        },
        onDone: () {
          _connected = false;
        },
        onError: (error) {
          logger.i("WebSocket connection errored: $error");
          _connected = false;
        },
      );
      return Ok(null);
    } catch (e, st) {
      _connected = false;
      return bail("Failed to connect: ${e.toString()}", st);
    }
  }

  @override
  Future<Result<void>> disconnect() async {
    try {
      await _channel?.sink.close();
      _connected = false;
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
}
