import 'package:flutter/material.dart';
import 'package:nubank_refactor/screens/home/home_screen.dart';
import 'package:nubank_refactor/screens/intro/intro_screen.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) {
  return {
    AppRoutes.intro: (context) => IntroScreen(),
    AppRoutes.home: (context) => HomeScreen(),
  };
}

class AppRoutes {
  static String intro = '/intro';
  static String home = '/home';
}
