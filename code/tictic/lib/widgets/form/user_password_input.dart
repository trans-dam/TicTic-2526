import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'my_input.dart';

class UserPasswordInput extends StatelessWidget {
  const UserPasswordInput({super.key, this.passwordController});

  final TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    return MyInput(
      controller: passwordController,
      label: AppLocalizations.of(context)!.user_password,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppLocalizations.of(
            context,
          )!.validation_required(AppLocalizations.of(context)!.user_password);
        } else if (value.length < 9) {
          return AppLocalizations.of(context)!.password_length(8);
        }
        return null;
      },
      icon: Icons.password,
    );
  }
}
