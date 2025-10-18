import 'package:tictic/screens/home/home_screen.dart';
import 'package:tictic/screens/login/login_screen.dart';
import 'package:tictic/screens/register/register_screen.dart';
import 'package:tictic/screens/welcome/welcome_screen.dart';

final routes = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
