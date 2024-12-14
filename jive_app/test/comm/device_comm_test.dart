import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:jive_app/comm/device_comm.dart';

void main() {
  test('JSON serialization test', () {
    // Create test instances
    final client = Client(id: "client123", name: "Test Client");

    final host = Host(
        id: "host123",
        name: "Test Host",
        sources: {MusicSource.spotify, MusicSource.local});

    final spotifySong = SongReference.spotify("spotify123");
    final localSong = SongReference.local("local123");

    final songMeta = SongMeta(
        id: "song123",
        title: "Test Song",
        artist: "Test Artist",
        album: "Test Album",
        albumArtUrl: "https://example.com/art.jpg",
        duration: Duration(minutes: 3, seconds: 30),
        isPlaying: true);

    final commands = [
      DeviceCommand.connect(client),
      DeviceCommand.requestId(),
      DeviceCommand.requestState(),
      DeviceCommand.requestQueue(),
      DeviceCommand.mediaCommand(MediaCommandType.play),
      DeviceCommand.setVolume(50),
      DeviceCommand.playSong(spotifySong),
    ];

    final responses = [
      HostResponse.connect(host),
      HostResponse.id("response123"),
      HostResponse.queue([("queue1", songMeta)]),
      HostResponse.playState(
          songMeta, MediaPlayState.playing, Duration(seconds: 30)),
      HostResponse.error("Test error"),
      HostResponse.ok(),
    ];

    final playState = PlayState(
        currentSong: songMeta,
        playState: MediaPlayState.playing,
        playHead: Duration(seconds: 45),
        queue: [("queue1", songMeta)]);

    // Print all serialized objects
    print('\nClient: ${jsonEncode(client)}');
    print('\nHost: ${jsonEncode(host)}');
    print('\nSpotify Song Reference: ${jsonEncode(spotifySong)}');
    print('\nLocal Song Reference: ${jsonEncode(localSong)}');
    print('\nSong Meta: ${jsonEncode(songMeta)}');

    print('\nCommands:');
    for (final command in commands) {
      print('${command.runtimeType}: ${jsonEncode(command)}');
      print('${command.runtimeType}: ${jsonEncode(command)}');
    }

    print('\nResponses:');
    for (final response in responses) {
      print('${response.runtimeType}: ${jsonEncode(response)}');
    }

    print('\nPlay State: ${jsonEncode(playState)}');

    // Add verification that serialization/deserialization works
    expect(Client.fromJson(jsonDecode(jsonEncode(client))), client);
    expect(Host.fromJson(jsonDecode(jsonEncode(host))), host);
    expect(PlayState.fromJson(jsonDecode(jsonEncode(playState))), playState);
  });
}
