import 'package:flutter/material.dart';
import 'package:sneaker/components/auth_button.dart';
import 'package:sneaker/components/custom_textformfield.dart';
import 'package:sneaker/components/logo.dart';
import 'package:sneaker/viewModels/sign_in.viewmodel.dart';
import 'package:sneaker/views/base.view.dart';

class SignInView extends StatefulWidget {
  static const String routeName = "/sign-in";
  const SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignInViewModel>(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Logo(),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "Connexion",
                    style: TextStyle(
                      fontFamily: 'Futura',
                      fontSize: 25,
                    ),
                  ),
                  const Text(
                    "Veuillez saisir vos informations",
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontFamily: 'Futura',
                    ),
                  ),
                  const SizedBox(height: 15),
                  const CustomTextFormField(
                    hintText: "Nom d'utilisateur",
                  ),
                  const SizedBox(height: 15),
                  const CustomTextFormField(hintText: "Mots de passe"),
                  const SizedBox(height: 15),
                  AuthButton(
                    content: const Text("Connexion"),
                    action: () {
                      model.logIn();
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Nouvel utilisateur?",
                        style: TextStyle(
                          color: Color(0xffA1A1A1),
                          fontFamily: "Futura",
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          "Créer un compte",
                          style: TextStyle(
                            fontFamily: "Futura",
                            color: Color(
                              0xff2F2E41,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
