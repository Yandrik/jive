import 'package:flutter_test/flutter_test.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';

import '../mocks/mock_transport.dart';

void main() {
  group('HostController Tests', () {
    late MockTransport mockTransport;
    late HostController hostController;

    setUp(() {
      mockTransport = MockTransport();
      final testHost = Host(
        id: 'test-host',
        name: 'Test Host',
        sources: {MusicSource.spotify},
      );

      hostController = HostController(
        Uri.parse('ws://localhost:8080'),
        testHost,
        (client, command) {
          print("command received: $command (from $client)");
          // Handle test commands
        },
      );
    });

    test('Mock transport send and receive', () {
      final testMessage = {'type': 'test', 'data': 'hello'};

      mockTransport.connect();

      // Test sending
      mockTransport.send(testMessage);
      expect(mockTransport.sentMessages.length, equals(1));
      expect(mockTransport.sentMessages.first, equals(testMessage));

      mockTransport.onReceive((recv) => {print(recv)});

      // Test receiving
      mockTransport.simulateReceive(testMessage);
      expect(mockTransport.receivedMessages.length, equals(1));
      expect(mockTransport.receivedMessages.first, equals(testMessage));

      // Test connection state
      expect(mockTransport.isConnected, isTrue);
      mockTransport.disconnect();
      expect(mockTransport.isConnected, isFalse);
    });

    test('Client connection and message flow', () async {
      final testClient = Client(id: 'test-client', name: 'Test Client');

      // Simulate client connection
      var future = await hostController.connectClient(mockTransport);

      print(DeviceCommand.connect(testClient).toJson());

      mockTransport.simulateReceive(
        DeviceCommand.connect(testClient).toJson(),
      );

      print(future);
      print(mockTransport.sentMessages);

      expect(hostController.clients.length, equals(1));
      expect(hostController.isClientConnected(testClient), isTrue);
    });
  });
}
