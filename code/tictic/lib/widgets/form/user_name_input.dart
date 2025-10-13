import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'my_input.dart';

class UserNameInput extends StatelessWidget {
  const UserNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MyInput(
      label: AppLocalizations.of(context)!.user_name,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppLocalizations.of(
            context,
          )!.validation_required(AppLocalizations.of(context)!.user_name);
        }
        return null;
      },
      hintText: AppLocalizations.of(context)!.user_name_placeholder,
      icon: Icons.person,
    );
  }
}
