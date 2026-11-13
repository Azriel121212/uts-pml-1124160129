import 'package:flutter/material.dart';

import 'screens/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Azriel - 1124160129',
      debugShowCheckedModeBanner: false,
      // Tema Terang bernuansa Silver
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey,
        brightness: Brightness.light,
      ),
      // Tema Gelap bernuansa Silver Gelap
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light,
      home: const AboutPage(),
    );
  }
}
