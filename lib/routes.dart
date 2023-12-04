import 'package:flutter/widgets.dart';
import 'package:mot/screens/forgot_password/forgot_password_screen.dart';
import 'package:mot/screens/login_success/login_success_screen.dart';
import 'package:mot/screens/sign_in/sign_in_screen.dart';
import 'package:mot/screens/sign_up/sign_up_screen.dart';
import 'screens/welcome/welcome_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  
};
