import 'package:flutter/material.dart';
import 'package:godseye/screens/profile_screen.dart';
import 'package:godseye/widgets/ge_button.dart';
import 'package:godseye/widgets/stat_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Godseye'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StatDisplay(statName: 'CHA', statValue: 10),
            const SizedBox(height: 20),
            const StatDisplay(statName: 'FTH', statValue: 10),
            const SizedBox(height: 20),
            const StatDisplay(statName: 'TMP', statValue: 10),
            const SizedBox(height: 20),
            const StatDisplay(statName: 'GEN', statValue: 10),
            const SizedBox(height: 20),
            const StatDisplay(statName: 'DIL', statValue: 10),
            const SizedBox(height: 20),
            const StatDisplay(statName: 'CON', statValue: 10),
            const SizedBox(height: 20),
            const StatDisplay(statName: 'PAT', statValue: 10),
            const SizedBox(height: 20),
            GEButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              label: 'Go to Profile',
            ),
            const SizedBox(height: 20),
            GEButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: todo
                    // TODO: Define another navigation route
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              label: 'Go to Protected Screen',
            ),
          ],
        ),
      ),
    );
  }
}
