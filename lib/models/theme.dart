import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  canvasColor: const Color.fromARGB(255, 255, 255, 255),
  cardColor: const Color.fromARGB(255, 240, 240, 240),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black, fontSize: 20),
    bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
    bodySmall: TextStyle(color: Colors.black, fontSize: 14),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black,
  canvasColor: const Color.fromARGB(136, 32, 32, 32),
  cardColor: const Color.fromARGB(221, 43, 43, 43),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
    bodySmall: TextStyle(color: Colors.white, fontSize: 14),
  ),
);
