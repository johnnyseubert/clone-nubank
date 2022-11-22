import 'package:flutter/material.dart';
import 'package:nubank_refactor/screens/intro/intro_screen.dart';
import 'package:nubank_refactor/utils/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(NubankApp());
}

class NubankApp extends StatelessWidget {
  const NubankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clone Nubank Refactor",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: getRoutes(context),
      initialRoute: AppRoutes.intro,
      home: IntroScreen(),
    );
  }
}
