import 'package:flutter/material.dart';

import 'package:glassmorphism/glassmorphism.dart';

class GlassySnackBar extends StatelessWidget {
  final String message;

  const GlassySnackBar({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: 300,
      height: 60,
      borderRadius: 20,
      blur: 20,
      alignment: Alignment.center,
      border: 2,
      linearGradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.2),
          Colors.white38.withOpacity(0.2),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderGradient: LinearGradient(
        colors: [
          Colors.white24.withOpacity(0.2),
          Colors.white70.withOpacity(0.2),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(0.8),
        ),
      ),
    );
  }
}

void showSnackBar({
  required BuildContext context,
  required String text,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: GlassySnackBar(message: text),
    ),
  );
}
