import 'package:admin/controllers/menu_app_controller.dart';
import 'package:admin/models/theme_notifier.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Admin Panel',
            theme: themeNotifier.currentTheme,
            home: MultiProvider(
              providers: [
                Provider<ThemeData>(
                  create: (_) => ThemeData.dark(),
                ),
                ChangeNotifierProvider(
                  create: (context) => MenuAppController(),
                ),
              ],
              child: MainScreen(),
            ),
          );
        },
      ),
    );
  }
}
