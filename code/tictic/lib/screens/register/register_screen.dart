import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/scaffold_with_background_image.dart';
import 'package:tictic/screens/welcome/widgets/svg_logo.dart';
import 'package:tictic/widgets/anchor.dart';
import 'package:tictic/widgets/form/my_input.dart';
import 'package:tictic/widgets/go_back_button.dart';
import 'package:validator_regex/validator_regex.dart';

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
                  MyInput(
                    label: AppLocalizations.of(context)!.user_name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(
                          context,
                        )!.validation_required(
                          AppLocalizations.of(context)!.user_name,
                        );
                      }
                    },
                    hintText: AppLocalizations.of(
                      context,
                    )!.user_name_placeholder,
                    icon: Icons.person,
                  ),
                  SizedBox(height: kVerticalPaddingL),
                  MyInput(
                    label: AppLocalizations.of(context)!.user_email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(
                          context,
                        )!.validation_required(
                          AppLocalizations.of(context)!.user_name,
                        );
                      } else if (Validator.email(value)) {
                        return AppLocalizations.of(context)!.invalid_email;
                      }
                    },
                    hintText: AppLocalizations.of(
                      context,
                    )!.user_email_placeholder,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.mail,
                  ),
                  SizedBox(height: kVerticalPaddingL),
                  MyInput(
                    label: AppLocalizations.of(context)!.user_password,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(
                          context,
                        )!.validation_required(
                          AppLocalizations.of(context)!.user_password,
                        );
                      } else if (value.length < 9) {
                        return AppLocalizations.of(context)!.password_length(8);
                      }
                    },
                    icon: Icons.password,
                  ),
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
