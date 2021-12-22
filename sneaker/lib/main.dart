import 'package:flutter/material.dart';
import 'package:sneaker/locator.dart';
import 'package:sneaker/views/onboarding_screen.dart';
import 'package:sneaker/views/splash_screen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
      },
    );
  }
}
