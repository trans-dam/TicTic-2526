import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/routes.dart';

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
      theme: appTheme,
      routes: routes,
    );
  }
}
