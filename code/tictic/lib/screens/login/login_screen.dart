import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tictic/screens/home/home_screen.dart';
import 'package:tictic/screens/register/register_screen.dart';
import 'package:tictic/widgets/form/user_email_input.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/anchor.dart';
import '../../widgets/form/user_password_input.dart';
import '../../widgets/go_back_button.dart';
import '../scaffold_with_background_image.dart';
import '../../widgets/svg_logo.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const routeName = "/login";
  final _loginFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(
    text: kDebugMode ? "daniel.schreurs@hepl.be" : null,
  );
  final _passwordController = TextEditingController(
    text: kDebugMode ? "1234567890" : null,
  );

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
                  UserEmailInput(emailController: _emailController),
                  SizedBox(height: kVerticalPaddingL),
                  UserPasswordInput(passwordController: _passwordController),
                  SizedBox(height: kVerticalPaddingL),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          _loginFormKey.currentState?.validate();
                          if (_loginFormKey.currentState!.validate()) {
                            try {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  );
                              Navigator.pushNamed(
                                context,
                                HomeScreen.routeName,
                              );
                            } on FirebaseAuthException catch (e) {
                              String message = "";
                              if (e.code == 'user-not-found') {
                                message = AppLocalizations.of(context)!
                                    .error_user_not_found;
                              } else if (e.code == 'wrong-password') {
                                message = AppLocalizations.of(context)!
                                    .error_wrong_password;
                              } else {
                                message = AppLocalizations.of(context)!
                                    .error_generic_login;
                              }
                              final snackBar = SnackBar(content: Text(message));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
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
                  Navigator.pushNamed(context, RegisterScreen.routeName);
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
