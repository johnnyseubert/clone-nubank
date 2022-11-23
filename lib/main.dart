import 'package:flutter/material.dart';
import 'package:nubank_refactor/providers/user.dart';
import 'package:nubank_refactor/screens/home/home_screen.dart';
import 'package:nubank_refactor/providers/money.dart';
import 'package:nubank_refactor/screens/splash/splash_screen.dart';
import 'package:nubank_refactor/utils/routes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const SplashScreen());

  await Future.delayed(Duration(seconds: 2));

  runApp(const NubankApp());
}

class NubankApp extends StatelessWidget {
  const NubankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => MoneyProvider()),
        ChangeNotifierProvider(create: (ctx) => UserProvider()),
      ],
      child: MaterialApp(
        title: "Clone Nubank Refactor",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        routes: getRoutes(context),
        initialRoute: AppRoutes.home,
        home: HomeScreen(),
      ),
    );
  }
}
