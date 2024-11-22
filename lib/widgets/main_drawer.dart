import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(int index, String name) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shadowColor: Theme.of(context).colorScheme.surfaceBright,
      child: Column(
        children: [
          SizedBox(
            height: (MediaQuery.sizeOf(context).height / 10)
                .clamp(64, double.infinity),
            child: DrawerHeader(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.inversePrimary,
                ]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "[Username]",
                      // style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                    ),
                    IconButton(
                      // iconSize: 36,
                      icon: const Icon(Icons.settings),
                      color: Theme.of(context).colorScheme.onSurface,
                      onPressed: () {
                        onSelectScreen(3, 'Settings');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),

          // List Tiles
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              onSelectScreen(0, 'Home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.live_help),
            title: const Text('Adventure Log'),
            onTap: () {
              onSelectScreen(1, 'Adventure Log');
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist_rtl),
            title: const Text('Checklist'),
            onTap: () {
              onSelectScreen(2, 'Checklist');
            },
          ),
        ],
      ),
    );
  }
}
