// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Application TicTic';

  @override
  String get continueWithOutLogin => 'Continuer sans compte';

  @override
  String get or => 'ou';

  @override
  String get login => 'Connexion';

  @override
  String get user_name => 'Nom d\'utilisateur';

  @override
  String get user_name_placeholder => 'JohnDoe';

  @override
  String get user_email => 'email';

  @override
  String get user_email_placeholder => 'john@doe.com';

  @override
  String get user_password => 'Mot de passe';

  @override
  String get already_have_account => 'Vous avez déjà un compte ? ';

  @override
  String validation_required(Object fielt_name) {
    return 'Le champ \"$fielt_name\" est requis';
  }

  @override
  String get invalid_email => 'Cet email n’est pas valide.';

  @override
  String password_length(Object nb) {
    return 'Votre mot de passe doit contenir au moins $nb caractères';
  }

  @override
  String get register => 'Inscription';

  @override
  String get text_slide_1 => 'L’harmonie financière dans vos groupes, en toute simplicité !';

  @override
  String get text_slide_2 => 'Calculs instantanés, équité garantie avec TicTic !';

  @override
  String get text_slide_3 => 'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !';

  @override
  String get text_slide_4 => 'TicTic : Vos dépenses partagées en toute simplicité !';
}
