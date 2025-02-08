import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  cardColor: const Color.fromARGB(255, 240, 240, 240),
  canvasColor: const Color.fromARGB(255, 255, 255, 255),
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(color: Colors.black, fontSize: 20),
    displayMedium: TextStyle(color: Colors.black, fontSize: 16),
    displaySmall: TextStyle(color: Colors.black, fontSize: 14),
    headlineLarge: TextStyle(color: Colors.black, fontSize: 20),
    headlineMedium: TextStyle(color: Colors.black, fontSize: 16),
    headlineSmall: TextStyle(color: Colors.black, fontSize: 14),
    bodyLarge: TextStyle(color: Colors.black, fontSize: 20),
    bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
    bodySmall: TextStyle(color: Colors.black, fontSize: 14),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: const Color.fromARGB(255, 0, 4, 43),
  cardColor: const Color.fromARGB(255, 16, 22, 50),
  canvasColor: const Color.fromARGB(135, 1, 0, 29),
  drawerTheme: DrawerThemeData(
    backgroundColor: const Color.fromARGB(255, 16, 22, 50),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(color: Colors.white, fontSize: 20),
    displayMedium: TextStyle(color: Colors.white, fontSize: 16),
    displaySmall: TextStyle(color: Colors.white, fontSize: 14),
    headlineLarge: TextStyle(color: Colors.white, fontSize: 20),
    headlineMedium: TextStyle(color: Colors.white, fontSize: 16),
    headlineSmall: TextStyle(color: Colors.white, fontSize: 14),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
    bodySmall: TextStyle(color: Colors.white, fontSize: 14),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);
