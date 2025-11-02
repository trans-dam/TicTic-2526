import 'package:flutter/material.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: Row(
        children: [Text('Bonjour, Daniel !', style: kTitleHome)],
      ),
    );
  }
}
