import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tictic/screens/home/home_screen.dart';
import 'package:tictic/screens/welcome/welcome_screen.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations.of(context)?.appTitle ?? 'TicTic',
      theme: appTheme,
      routes: routes,
      initialRoute: FirebaseAuth.instance.currentUser == null
          ? WelcomeScreen.routeName
          : HomeScreen.routeName,
      supportedLocales: const [Locale('fr'), Locale('en')],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate, // Material widgets
        GlobalWidgetsLocalizations.delegate, // widgets génériques
        GlobalCupertinoLocalizations.delegate, // iOS widgets
      ],
    );
  }
}
