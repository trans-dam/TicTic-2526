import 'package:flutter/material.dart';
import '../constants/fonts.dart';
import '../constants/sizes.dart';

class TitleSec extends StatelessWidget {
  const TitleSec({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(children: [Text(title, style: kTagLine)]),
    );
  }
}
