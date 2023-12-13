import 'package:flutter/material.dart';
import 'package:mot/screens/welcome/welcome_screen.dart';
import '../../components/custom_success_screen.dart';

class SignInSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const SignInSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSuccessScreen(
      routeName: "/login_success",
      imagePath: "assets/images/success.png",
      title: "Login Success",
      buttonText: "Back to Home",
      nextRoute: WelcomeScreen.routeName, // TODO : change it to home screen
    );
  }
}