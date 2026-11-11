import 'package:flutter/material.dart';
import 'package:p5_navigator/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Crumbs Bakery',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
