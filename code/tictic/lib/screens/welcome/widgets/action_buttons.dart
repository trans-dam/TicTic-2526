import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kHorizontalPadding),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: kLabelStyle),
              onPressed: () {},
              child: Text("Je me connecte"),
            ),
          ),
          SizedBox(width: kHorizontalPadding),
          Padding(
            padding: const EdgeInsets.only(right: kHorizontalPadding),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(textStyle: kLabelStyle),
              child: Text("Créer mon compte"),
            ),
          ),
        ],
      ),
    );
  }
}
