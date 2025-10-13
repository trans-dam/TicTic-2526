import 'package:flutter/material.dart';
import 'package:validator_regex/validator_regex.dart';

import '../../l10n/app_localizations.dart';
import 'my_input.dart';

class UserEmailInput extends StatelessWidget {
  const UserEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MyInput(
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
        return null;
      },
      hintText: AppLocalizations.of(
        context,
      )!.user_email_placeholder,
      keyboardType: TextInputType.emailAddress,
      icon: Icons.mail,
    );
  }
}
