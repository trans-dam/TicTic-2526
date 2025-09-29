import 'package:flutter/material.dart';

import '../../constants/fonts.dart' show kTextDiverStyle;
import '../../constants/sizes.dart' show kHorizontalPadding;

class HorizontalDiverWithText extends StatelessWidget {
  final String text;

  const HorizontalDiverWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kHorizontalPadding),
      child: Row(
        children: [
          SizedBox(width: kHorizontalPadding),
          Expanded(child: Divider(thickness: 1)),
          SizedBox(width: kHorizontalPadding),
          Text(text, style: kTextDiverStyle),
          SizedBox(width: kHorizontalPadding),
          Expanded(child: Divider(thickness: 1)),
          SizedBox(width: kHorizontalPadding),
        ],
      ),
    );
  }
}
