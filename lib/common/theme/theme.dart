import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  cardColor: const Color.fromARGB(255, 240, 240, 240),
  canvasColor: const Color.fromARGB(255, 249, 249, 249),
  drawerTheme: DrawerThemeData(
    backgroundColor: const Color.fromARGB(255, 252, 252, 252),
    shadowColor: const Color.fromARGB(255, 0, 0, 0),
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 16,
    surfaceTintColor: const Color.fromARGB(255, 180, 180, 180),
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
  scaffoldBackgroundColor: const Color.fromARGB(255, 10, 13, 21),
  cardColor: const Color.fromARGB(255, 14, 17, 27),
  canvasColor: const Color.fromARGB(134, 1, 0, 21),
  drawerTheme: DrawerThemeData(
    backgroundColor: const Color.fromARGB(255, 9, 13, 29),
    surfaceTintColor: const Color.fromARGB(255, 1, 0, 24),
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
