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
  scaffoldBackgroundColor: const Color.fromARGB(255, 0, 4, 17),
  canvasColor: const Color.fromARGB(135, 1, 0, 29),
  cardColor: const Color.fromARGB(221, 16, 22, 50),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
    bodySmall: TextStyle(color: Colors.white, fontSize: 14),
  ),
);
