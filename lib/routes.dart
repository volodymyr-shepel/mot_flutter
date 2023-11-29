import 'package:flutter/widgets.dart';
import 'screens/welcome/welcome_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  
};
