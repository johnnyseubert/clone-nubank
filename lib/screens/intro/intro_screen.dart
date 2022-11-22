import 'package:flutter/material.dart';
import 'package:nubank_refactor/utils/colors.dart';
import 'package:nubank_refactor/utils/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              pageOne(),
              pageTwo(context),
            ],
          ),
          //dot Indicators
          Container(
            alignment: Alignment(0, 0.8),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: WormEffect(
                dotWidth: 24.0,
                dotHeight: 16.0,
                strokeWidth: 1.5,
                activeDotColor: Colors.deepPurple.shade400,
                dotColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container pageOne() {
    return Container(
      color: nuPrimary,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Text(
            "Aplicativo desenvolvido para praticar design com o nubank",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Container pageTwo(BuildContext context) {
    return Container(
      color: nuPrimary,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.home);
            },
            child: Text("Ir para o Aplicativo"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              primary: Colors.deepPurple.shade400,
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
