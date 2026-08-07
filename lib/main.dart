import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ProfilNagariApp());
}

class ProfilNagariApp extends StatelessWidget {
  const ProfilNagariApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Nagari',
      home: const HomePage(),
    );
  }
}