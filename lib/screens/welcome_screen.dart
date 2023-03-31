import 'package:flutter/material.dart';
import 'package:godseye/widgets/ge_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Godseye',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 40),
            GEButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              label: 'Sign In',
            ),
            const SizedBox(height: 20),
            GEButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              label: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
