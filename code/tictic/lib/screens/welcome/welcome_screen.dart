import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/scaffold_with_background_image.dart';
import 'package:tictic/screens/welcome/widgets/action_buttons.dart';
import 'package:tictic/screens/welcome/widgets/horizontal_diver_with_text.dart';
import 'package:tictic/screens/welcome/widgets/svg_logo.dart';
import 'package:tictic/screens/welcome/widgets/text_slider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static final String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackgroundImage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: kVerticalPaddingXL),
          SvgLogo(),
          Spacer(),
          SizedBox(height: kVerticalPaddingXL),
          TextSlider(),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
            child: Text(AppLocalizations.of(context)!.continueWithOutLogin),
          ),
          HorizontalDiverWithText(text: AppLocalizations.of(context)!.or),
          ActionButtons(),
        ],
      ),
    );
  }
}
