
import 'package:appsolute_project_alco/screens/splash_screen.dart';
import 'package:flutter/material.dart';

/* 
  2024.11.13
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
          minWidth: double.minPositive,
        )
      ),
      home: const SplashScreen(),
    );
  }
}
