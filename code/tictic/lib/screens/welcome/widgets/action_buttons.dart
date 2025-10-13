import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/login/login_screen.dart';
import 'package:tictic/screens/register/register_screen.dart';

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
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routName);
              },
              child: Text(AppLocalizations.of(context)!.login),
            ),
          ),
          SizedBox(width: kHorizontalPadding),
          Padding(
            padding: const EdgeInsets.only(right: kHorizontalPadding),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.routName);
              },
              style: ElevatedButton.styleFrom(textStyle: kLabelStyle),
              child: Text(AppLocalizations.of(context)!.register),
            ),
          ),
        ],
      ),
    );
  }
}
