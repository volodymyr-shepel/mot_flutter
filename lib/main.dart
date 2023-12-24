import 'package:flutter/material.dart';
import 'package:mot/routes.dart';
import 'package:mot/screens/welcome/welcome_screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';



import 'theme.dart';

void main() {
  const FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MOT',
      theme: AppTheme.darkTheme(context),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
