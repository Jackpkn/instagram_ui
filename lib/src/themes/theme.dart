import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final theme = Provider((ref) => _theme);
final darkTheme = Provider((ref) => _darkTheme);
final _theme = ThemeData(
  primaryColor: Colors.deepPurple,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      shape: const StadiumBorder(),
    ),
  ),
  textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      displayMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      )),
);

//dark
final _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  elevatedButtonTheme: _theme.elevatedButtonTheme,
  textTheme: _theme.textTheme.apply(
    displayColor: Colors.white,
    bodyColor: Colors.white,
  ),
);

// EX