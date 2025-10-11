import 'package:flutter/material.dart';
import 'package:tictic/l10n/app_localizations.dart';

import '../constants/fonts.dart' show kItalicText;

class Anchor extends StatelessWidget {
  const Anchor({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: kItalicText.copyWith(decoration: TextDecoration.underline),
      ),
    );
  }
}
