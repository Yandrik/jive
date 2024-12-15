import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/comm/device_comm.dart';
import 'package:jive_app/comm/multiplexer.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/provider/comm/client.dart';
import 'package:jive_app/provider/comm/host.dart';
import 'package:jive_app/provider/router.gr.dart';
import 'package:jive_app/ui/widgets/qr_code_scanner.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

@RoutePage()
class EntryPage extends ConsumerWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jive'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to Jive!',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 32),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: open QR code scanner or type in thingy
                    _showJoinDialog(context, ref);
                  },
                  icon: const Icon(Icons.group_add),
                  label: const Text('Join a Jive'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    _showHostDialog(context, ref);
                  },
                  icon: const Icon(Icons.add_circle),
                  label: const Text('Start a Jive'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Center(
                child: Text("Made with ❤️ by the Jive team",
                    style: TextStyle(color: Colors.grey[600], fontSize: 12)),
              )),
        ],
      ),
    );
  }
}

void _showJoinDialog(BuildContext context, WidgetRef ref) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return DialogContent();
    },
  );
}

class DialogContent extends ConsumerStatefulWidget {
  const DialogContent({super.key});

  @override
  ConsumerState<DialogContent> createState() => _DialogContentState();
}

class _DialogContentState extends ConsumerState<DialogContent> {
  String enteredId = '';
  String enteredName = '';
  bool connecting = false;
  TextEditingController ctrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    enteredId = ClientControllerSingleton.I.controller?.currentHost?.id ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AlertDialog(
        title: const Text('Join a Jive'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    autofocus: true,
                    controller: ctrl,
                    onChanged: (value) => setState(() {
                      enteredId = value;
                    }),
                    decoration: const InputDecoration(
                      labelText: 'Jive ID',
                      hintText: 'Enter the Jive ID',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.qr_code_scanner),
                  onPressed: () {
                    showDialog(
                        useRootNavigator: true,
                        context: context,
                        builder: (context) {
                          return BarcodeScannerSimple(
                            onScan: (scannedCode) {
                              // Update the Jive ID with the scanned barcode
                              ctrl.text = scannedCode;
                              setState(() {
                                enteredId = scannedCode;
                              });
                              Navigator.pop(context); // Close the barcode scanner screen
                            },
                          );
                        });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) => setState(() {
                enteredName = value;
              }),
              decoration: const InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter your name',
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: connecting
                    ? CircularProgressIndicator()
                    : SizedBox(
                        height: 36,
                        child: Text("Connect to your Jive!"),
                      ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: !connecting
                ? () {
                    Navigator.of(context).pop();
                  }
                : null,
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: connecting || enteredId.trim().isEmpty || enteredName.trim().isEmpty
                ? null
                : () async {
                    setState(() {
                      connecting = true;
                    });

                    var clientController =
                        await ClientControllerSingleton.I.create(enteredName.trim());
                    var res = await ClientControllerSingleton.I.connect(enteredId.trim());

                    if (res.isOk()) {
                      if (context.mounted) {
                        context.replaceRoute(HomeRoute());
                      }
                    } else {
                      setState(() {
                        connecting = false;
                      });
                      logger.w("Connecting failed: $res");
                      await ClientControllerSingleton.I.clear();
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Connection failed, please try again"),
                            elevation: 100,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    }
                  },
            child: const Text('Join'),
          ),
        ],
      ),
    );
  }
}

class HostDialogContent extends ConsumerStatefulWidget {
  const HostDialogContent({super.key});

  @override
  ConsumerState<HostDialogContent> createState() => _HostDialogContentState();
}

class _HostDialogContentState extends ConsumerState<HostDialogContent> {
  String enteredName = '';
  bool creating = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AlertDialog(
        title: const Text('Start a Jive'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              autofocus: true,
              onChanged: (value) => setState(() {
                enteredName = value;
              }),
              decoration: const InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter your name',
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: creating
                    ? CircularProgressIndicator()
                    : SizedBox(
                        height: 36,
                        child: Text("Start your own Jive!"),
                      ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: !creating
                ? () {
                    Navigator.of(context).pop();
                  }
                : null,
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: creating || enteredName.trim().isEmpty
                ? null
                : () async {
                    setState(() {
                      creating = true;
                    });

                    final hostController = await HostControllerSingleton.I
                        .create(enteredName.trim(), {MusicSource.local, MusicSource.spotify});

                    var res = await HostControllerSingleton.I.start();
                    if (res.isErr()) {
                      logger.w("Starting Host Client-Connect failed");
                      setState(() {
                        creating = false;
                      });
                      return;
                    }

                    if (context.mounted) {
                      context.replaceRoute(HomeRoute());
                    }
                    // Host creation logic will go here
                  },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}

void _showHostDialog(BuildContext context, WidgetRef ref) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return HostDialogContent();
    },
  );
}
