import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/home/home_screen.dart';
import 'package:tictic/screens/login/login_screen.dart';
import 'package:tictic/screens/scaffold_with_background_image.dart';
import 'package:tictic/widgets/svg_logo.dart';
import 'package:tictic/widgets/anchor.dart';
import 'package:tictic/widgets/form/user_email_input.dart';
import 'package:tictic/widgets/form/user_name_input.dart';
import 'package:tictic/widgets/form/user_password_input.dart';
import 'package:tictic/widgets/go_back_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static const routeName = "/register";
  final _registerFormKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController(text: kDebugMode ? "daniel.schreurs@hepl.be" : null);
  final _emailController = TextEditingController(text: kDebugMode ? "daniel.schreurs@hepl.be" : null);
  final _passwordController = TextEditingController(text: kDebugMode ? "1234567890" : null);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackgroundImage(
      child: SingleChildScrollView(
        child: Column(
          children: [
            GoBackButton(),
            SvgLogo(),
            SizedBox(height: kVerticalPaddingXL),
            Form(
              key: _registerFormKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: Column(
                  children: [
                    UserNameInput(usernameController: _usernameController),
                    SizedBox(height: kVerticalPaddingL),
                    UserEmailInput(emailController: _emailController),
                    SizedBox(height: kVerticalPaddingL),
                    UserPasswordInput(passwordController: _passwordController),
                    SizedBox(height: kVerticalPaddingL),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            _registerFormKey.currentState?.validate();
                            if (_registerFormKey.currentState!.validate()) {
                              try {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ).then((UserCredential userCredential) {
                                  Navigator.pushNamed(
                                    context,
                                    HomeScreen.routeName,
                                  );
                                });
                              } on FirebaseAuthException catch (e) {
                                String message;
                                if (e.code == 'weak-password') {
                                  message = AppLocalizations.of(context)!
                                      .password_length(9);
                                } else if (e.code == 'email-already-in-use') {
                                  message = AppLocalizations.of(context)!
                                      .email_already_in_use;
                                } else {
                                  message = AppLocalizations.of(context)!
                                      .error_registration_failed;
                                }
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(message)),
                                );
                              }
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
            SizedBox(height: kVerticalPaddingXL),
            Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.already_have_account,
                  style: kItalicText,
                ),
                Anchor(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  text: AppLocalizations.of(context)!.login,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

