import 'package:flutter/material.dart';
import 'package:tictic/screens/register/register_screen.dart';
import 'package:tictic/widgets/form/user_email_input.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/anchor.dart';
import '../../widgets/form/user_password_input.dart';
import '../../widgets/go_back_button.dart';
import '../scaffold_with_background_image.dart';
import '../welcome/widgets/svg_logo.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const routName = "/login";
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackgroundImage(
      child: Column(
        children: [
          GoBackButton(),
          SvgLogo(),
          Spacer(),
          Form(
            key: _loginFormKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Column(
                children: [
                  UserEmailInput(),
                  SizedBox(height: kVerticalPaddingL),
                  UserPasswordInput(),
                  SizedBox(height: kVerticalPaddingL),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _loginFormKey.currentState?.validate();
                          if (_loginFormKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: Text(AppLocalizations.of(context)!.login),
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
                AppLocalizations.of(context)!.not_yet_account,
                style: kItalicText,
              ),
              Anchor(
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.routName);
                },
                text: AppLocalizations.of(context)!.register,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
