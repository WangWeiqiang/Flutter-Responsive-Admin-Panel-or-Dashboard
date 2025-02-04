import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  canvasColor: Colors.white60,
  cardColor: Colors.white70,
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
  canvasColor: Colors.black54,
  cardColor: Colors.black87,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
    bodySmall: TextStyle(color: Colors.white, fontSize: 14),
  ),
);
