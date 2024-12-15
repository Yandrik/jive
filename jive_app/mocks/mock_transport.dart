import 'package:anyhow/anyhow.dart';
import 'package:jive_app/comm/transport.dart';

class MockTransport implements Transport {
  bool _connected = false;
  Function(dynamic)? _callback;
  List<dynamic> sentMessages = [];
  List<dynamic> receivedMessages = [];

  @override
  bool get isConnected => _connected;

  @override
  Future<Result<void>> connect() async {
    _connected = true;
    return Ok(null);
  }

  @override
  Future<Result<void>> disconnect() async {
    if (!_connected) {
      print("WARN: MockTransport.disconnect() without being connected first");
    }
    _connected = false;
    return Ok(null);
  }

  @override
  Future<Result<void>> send(dynamic message) async {
    if (!_connected) {
      throw Exception("MockTransport.send() without being connected first");
    }
    sentMessages.add(message);
    return Ok(null);
  }

  @override
  void onReceive(Function(dynamic message) callback) {
    _callback = callback;
  }

  // Helper method to simulate receiving messages
  void simulateReceive(dynamic message) {
    if (!_connected) {
      throw Exception("MockTransport.simulateReceive() without being connected first");
    }
    if (_callback != null) {
      receivedMessages.add(message);
      _callback!(message);
    } else {
      print("WARN: MockTransport.simulateReceive() without a callback set");
    }
  }

  @override
  Future<void> dispose() async {
    _connected = false;
  }

  @override
  void onDisconnect(Function() callback) {
    // TODO: implement onDisconnect
  }
}
