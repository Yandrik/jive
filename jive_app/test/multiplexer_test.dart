import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import '../mocks/mock_transport.dart';

void main() {
  group('HostController Tests', () {
    late MockTransport mockTransport;
    late HostController hostController;
    late Host testHost;

    setUp(() {
      mockTransport = MockTransport();
      testHost = Host(
        id: 'test-host',
        name: 'Test Host',
        sources: {MusicSource.spotify, MusicSource.local},
      );

      hostController = HostController(
        Uri.parse('ws://localhost:8080'),
        testHost,
        (client, command) {
          print("Command received: $command from ${client.name}");
        },
      );
    });

    test('Multiple client connections', () async {
      final client1 = Client(id: 'client1', name: 'Test Client 1');
      final client2 = Client(id: 'client2', name: 'Test Client 2');
      final transport1 = MockTransport();
      final transport2 = MockTransport();

      await hostController.connectClient(transport1);
      await hostController.connectClient(transport2);

      transport1.simulateReceive(jsonEncode(DeviceCommand.connect(client1)));
      transport2.simulateReceive(jsonEncode(DeviceCommand.connect(client2)));

      expect(hostController.clients.length, equals(2));
      expect(hostController.isClientConnected(client1), isTrue);
      expect(hostController.isClientConnected(client2), isTrue);
    });

    test('Broadcasting messages', () async {
      final client1 = Client(id: 'client1', name: 'Test Client 1');
      final client2 = Client(id: 'client2', name: 'Test Client 2');
      final transport1 = MockTransport();
      final transport2 = MockTransport();

      await hostController.connectClient(transport1);
      await hostController.connectClient(transport2);

      transport1.simulateReceive(jsonEncode(DeviceCommand.connect(client1)));
      transport2.simulateReceive(jsonEncode(DeviceCommand.connect(client2)));

      final testResponse = HostResponse.playState(
        SongMeta(
          id: 'song1',
          title: 'Test Song',
          artist: 'Test Artist',
          album: 'Test Album',
          albumArtUrl: null,
          duration: Duration(minutes: 3),
          reference: SongReference.spotify('ab123cd234de345'),
        ),
        MediaPlayState.playing,
        Duration(seconds: 30),
      );

      await hostController.broadcast(testResponse);

      expect(transport1.sentMessages.length,
          equals(2)); // Connect response + broadcast
      expect(transport2.sentMessages.length, equals(2));

      expect(transport1.sentMessages[1], equals(jsonEncode(testResponse)));
      expect(transport2.sentMessages[1], equals(jsonEncode(testResponse)));
    });

    test('Client disconnection handling', () async {
      final client = Client(id: 'client1', name: 'Test Client');
      final transport = MockTransport();

      await hostController.connectClient(transport);
      transport.simulateReceive(jsonEncode(DeviceCommand.connect(client)));

      expect(hostController.isClientConnected(client), isTrue);

      await hostController.disconnectClient(client);
      expect(hostController.isClientConnected(client), isFalse);
    });
  });

  group('ClientController Tests', () {
    late MockTransport mockTransport;
    late ClientController clientController;
    late Client testClient;

    setUp(() {
      mockTransport = MockTransport();
      testClient = Client(id: 'test-client', name: 'Test Client');
      clientController = ClientController(
        Uri.parse('ws://localhost:8080'),
        testClient,
        (response) {
          print("Response received: $response");
        },
      );
    });

    test('Client connection and host response', () async {
      final testHost = Host(
        id: 'test-host',
        name: 'Test Host',
        sources: {MusicSource.spotify},
      );

      await clientController.connectToHost(mockTransport);
      mockTransport.simulateReceive(jsonEncode(HostResponse.connect(testHost)));

      expect(clientController.isConnected, isTrue);
      expect(clientController.currentHost, equals(testHost));
      expect(mockTransport.sentMessages[0],
          equals(jsonEncode(DeviceCommand.connect(testClient))));
    });

    test('Command sending', () async {
      await clientController.connectToHost(mockTransport);

      final commands = [
        DeviceCommand.requestState(),
        DeviceCommand.mediaCommand(MediaCommandType.play),
        DeviceCommand.setVolume(75),
      ];

      for (final command in commands) {
        await clientController.sendCommand(command);
      }

      expect(
          mockTransport.sentMessages.length, equals(4)); // Connect + 3 commands
    });

    test('Disconnection cleanup', () async {
      await clientController.connectToHost(mockTransport);
      expect(clientController.isConnected, isTrue);

      await clientController.disconnect();
      expect(clientController.isConnected, isFalse);
      expect(clientController.currentHost, isNull);
    });
  });
}
