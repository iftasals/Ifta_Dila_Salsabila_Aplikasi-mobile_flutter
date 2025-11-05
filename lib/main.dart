import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFFFDF2F8),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFB39DDB),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const LandingPage(),
      routes: {
        '/home': (context) => const HomePage(),
      },
    );
  }
}
