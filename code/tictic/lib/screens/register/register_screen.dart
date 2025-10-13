import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/scaffold_with_background_image.dart';
import 'package:tictic/screens/welcome/widgets/svg_logo.dart';
import 'package:tictic/widgets/anchor.dart';
import 'package:tictic/widgets/form/user_name_input.dart';
import 'package:tictic/widgets/form/user_password_input.dart';
import 'package:tictic/widgets/go_back_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static const routName = "/register";
  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackgroundImage(
      child: Column(
        children: [
          GoBackButton(),
          SvgLogo(),
          Spacer(),
          Form(
            key: _registerFormKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Column(
                children: [
                  UserNameInput(),
                  SizedBox(height: kVerticalPaddingL),
                  UserNameInput(),
                  SizedBox(height: kVerticalPaddingL),
                  UserPasswordInput(),
                  SizedBox(height: kVerticalPaddingL),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _registerFormKey.currentState?.validate();
                          if (_registerFormKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: Text(AppLocalizations.of(context)!.register),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Column(
            children: [
              Text(
                AppLocalizations.of(context)!.already_have_account,
                style: kItalicText,
              ),
              Anchor(onTap: () {}, text: AppLocalizations.of(context)!.login),
            ],
          ),
        ],
      ),
    );
  }
}
