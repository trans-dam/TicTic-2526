import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application TicTic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff6750a4)),
      ),
      home: const WelcomeScreen(),
    );
  }
}
