import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';

class StatCard extends StatelessWidget {
  const StatCard({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kHorizontalPadding,
        bottom: kVerticalPadding,
        left: kHorizontalPadding,
      ),
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        color: kBackgroundColor.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [kShadow],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPaddingS,
          vertical: kHorizontalPaddingS,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title, style: kLabelStyle),
            Spacer(),
            Text(subtitle, style: kTitleBigStat, textAlign: TextAlign.end),
          ],
        ),
      ),
    );
  }
}
