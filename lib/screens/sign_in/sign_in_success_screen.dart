import 'package:flutter/material.dart';
import 'package:mot/screens/profile/profile_screen.dart';
import '../../components/custom_success_screen.dart';

// TODO : FIX THE ICON COLOR CHANGE
class SignInSuccessScreen extends StatelessWidget {
  static String routeName = "/signIn_success";

  const SignInSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSuccessScreen(
      imagePath: "assets/images/success.png",
      title: "Login Success",
      buttonText: "Back to Home",
      nextRoute: ProfileScreen.routeName 
    );
  }
}