import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/provider/comm/client.dart';
import 'package:jive_app/provider/comm/host.dart';

@RoutePage()
class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final host = HostControllerSingleton.I.controller?.host ??
        ClientControllerSingleton.I.controller?.currentHost;
    final currentClient = ClientControllerSingleton.I.controller?.client;
    final connectedClients = HostControllerSingleton.I.controller?.clients
            .map((t) => t.client)
            .toList() ??
        [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('People'),
      ),
      body: ListView(
        children: [
          if (host != null) _buildHostTile(host),
          const Divider(),
          if (currentClient != null &&
              !(HostControllerSingleton.I.controller
                      ?.isClientConnected(currentClient) ??
                  true))
            _buildCurrentUserTile(currentClient),
          ...connectedClients.map(_buildClientTile),
        ],
      ),
    );
  }

  Widget _buildHostTile(Host host) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.star),
      ),
      title: Text(host.name),
      subtitle: Text('Host'),
    );
  }

  Widget _buildCurrentUserTile(Client client) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(client.name),
      subtitle: Text('You'),
    );
  }

  Widget _buildClientTile(Client client) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person_outline),
      ),
      title: Text(client.name),
    );
  }
}
