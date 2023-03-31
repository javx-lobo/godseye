import 'package:flutter/material.dart';

class GEButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const GEButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        textStyle: Theme.of(context).textTheme.bodyLarge,
      ),
      child: Text(label),
    );
  }
}
