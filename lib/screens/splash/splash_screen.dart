import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nubank_refactor/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nuSecondary,
      child: Center(
        child: Lottie.asset("assets/splash.json"),
      ),
    );
  }
}
