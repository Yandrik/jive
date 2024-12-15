import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jive_app/logger.dart';
import 'package:jive_app/provider/comm/client.dart';
import 'package:jive_app/provider/router.gr.dart';

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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                  label: const Text('Start a Jive'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
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
  const DialogContent({
    super.key,
  });

  @override
  ConsumerState<DialogContent> createState() => _DialogContentState();
}

class _DialogContentState extends ConsumerState<DialogContent> {
  String enteredId = '';
  bool connecting = false;

  @override
  void initState() {
    super.initState();
    enteredId =
        ref.read(clientControllerPodProvider).value?.currentHost?.id ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AlertDialog(
        title: const Text('Enter Jive ID'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              autofocus: true,
              onChanged: (value) {
                enteredId = value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter the Jive ID here',
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
            onPressed: () {
              if (!connecting) {
                Navigator.of(context).pop();
              }
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              if (!connecting && enteredId.isNotEmpty) {
                setState(() {
                  connecting = true;
                });
                // Navigator.of(context).pop(enteredId);

                final controller = await ref
                    .read(clientControllerPodProvider.notifier)
                    .create("random name");

                var res = await controller.connectToHostWsRelay(enteredId);
                if (res.isOk()) {
                  if (context.mounted) {
                    context.navigateTo(HomeRoute());
                  }
                } else {
                  logger.w("Connecting failed: $res");
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("It didn't work, try again"),
                        elevation: 100,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                }
                if (mounted) {
                  setState(() {
                    connecting = false;
                  });
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
