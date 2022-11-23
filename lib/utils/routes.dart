import 'package:flutter/material.dart';
import 'package:nubank_refactor/screens/home/home_screen.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) {
  return {
    AppRoutes.home: (context) => HomeScreen(),
  };
}

class AppRoutes {
  static String home = '/home';
}
