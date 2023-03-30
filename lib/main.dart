import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'utils/routes.dart';
import 'utils/theme.dart';


void main() {
  runApp(const GodseyeApp());
}

class GodseyeApp extends StatelessWidget {
  const GodseyeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godseye',
      theme: godseyeTheme,
      home: const HomeScreen(),
    );
  }
}


  
  
