import 'package:flutter/material.dart';

class ScaffoldWithBackgroundImage extends StatelessWidget {
  const ScaffoldWithBackgroundImage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(child: child),
      ),
    );
    ;
  }
}
