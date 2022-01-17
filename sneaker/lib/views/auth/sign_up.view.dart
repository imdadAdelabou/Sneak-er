import "package:flutter/material.dart";
import 'package:sneaker/components/logo.dart';
import 'package:sneaker/viewModels/sign_up.viewmodel.dart';
import 'package:sneaker/views/base.view.dart';

class SignUpView extends StatefulWidget {
  static const String routeName = "/sign-up";
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: Column(
            children: const [
              SizedBox(height: 40),
              Logo(),
              Text("Signup"),
            ],
          ),
        ),
      ),
    );
  }
}
