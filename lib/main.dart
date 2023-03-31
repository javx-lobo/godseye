import 'package:flutter/material.dart';
import 'package:godseye/screens/home_screen.dart';
import 'package:godseye/screens/welcome_screen.dart';
import 'package:godseye/screens/signin_screen.dart';
import 'package:godseye/screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godseye',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/signin': (context) => const SignInScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}
