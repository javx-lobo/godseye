import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:godseye/providers/user_provider.dart';
import 'package:godseye/widgets/ge_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.name, style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 10),
            Text('Soul Score: ${user.soulScore}',
                style: Theme.of(context).textTheme.bodyLarge),
            const Spacer(),
            GEButton(
              label: 'Edit Profile',
              onPressed: () {
                // ignore: todo
                // TODO: Navigate to edit profile screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
