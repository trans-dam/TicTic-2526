import 'package:flutter/material.dart';
import 'package:tictic/screens/scaffold_with_background_image.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const routName = "/register";

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackgroundImage(
      child: Column(children: [Text("Register")]),
    );
  }
}
