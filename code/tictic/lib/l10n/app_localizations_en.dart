// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Application TicTic (en)';

  @override
  String get continueWithOutLogin => 'Continue without login';

  @override
  String get or => 'or';

  @override
  String get login => 'Login';

  @override
  String get user_name => 'Username';

  @override
  String get user_name_placeholder => 'JohnDoe';

  @override
  String get user_email => 'email';

  @override
  String get user_email_placeholder => 'john@doe.com';

  @override
  String get user_password => 'Password';

  @override
  String get already_have_account => 'You already have an account?';

  @override
  String get email_already_in_use => 'This email is already in use';

  @override
  String get error_registration_failed => 'Registration failed. Please try again later.';

  @override
  String get error_user_not_found => 'This user does not exist';

  @override
  String get error_wrong_password => 'Wrong password provided for that user';

  @override
  String get error_generic_login => 'Login failed. Please try again later.';

  @override
  String get not_yet_account => 'You don\'t have an account yet?';

  @override
  String validation_required(Object fielt_name) {
    return 'The \"$fielt_name\" is required.';
  }

  @override
  String get invalid_email => 'This email is invalid';

  @override
  String password_length(Object nb) {
    return 'Your password must be at least $nb characters';
  }

  @override
  String get register => 'Register';

  @override
  String get text_slide_1 => 'Financial harmony in your groups, made simple!';

  @override
  String get text_slide_2 => 'Instant calculations, fairness guaranteed with TicTic!';

  @override
  String get text_slide_3 => 'Tedious math? No thanks. Choose simplicity with TicTic!';

  @override
  String get text_slide_4 => 'TicTic: Share your expenses effortlessly!';
}
