import "package:flutter/material.dart";
import 'package:sneaker/components/logo.dart';
import 'package:sneaker/views/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
          OnBoardingScreen.routeName, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(child: Logo()),
      ),
    );
  }
}
