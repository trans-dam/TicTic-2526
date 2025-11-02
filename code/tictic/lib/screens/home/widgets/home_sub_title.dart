import 'package:flutter/material.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';

class HomeSubTitle extends StatelessWidget {
  const HomeSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(children: [Text("On vous doit de l’argent", style: kSectionTitle)]),
    );
  }
}
