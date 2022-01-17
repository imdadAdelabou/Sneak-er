import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sneaker/components/auth_button.dart';
import 'package:sneaker/components/custom_textformfield.dart';
import 'package:sneaker/components/logo.dart';
import 'package:sneaker/utils/constant.dart';
import 'package:sneaker/viewModels/sign_in.viewmodel.dart';
import 'package:sneaker/views/base.view.dart';

class SignInView extends StatefulWidget {
  static const String routeName = "/sign-in";
  const SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BaseView<SignInViewModel>(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Form(
                key: globalKey,
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
                        fontFamily: fontFamily,
                        fontSize: 25,
                      ),
                    ),
                    const Text(
                      "Veuillez saisir vos informations",
                      style: TextStyle(
                        color: Color(0xff999999),
                        fontFamily: fontFamily,
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomTextFormField(
                      hintText: "Nom d'utilisateur",
                      listsValidator: [
                        RequiredValidator(errorText: "ce champ est requis")
                      ],
                    ),
                    const SizedBox(height: 15),
                    CustomTextFormField(
                      hintText: "Mots de passe",
                      typeInput: TypeInput.mdp,
                      listsValidator: [
                        RequiredValidator(errorText: "ce champ est requis")
                      ],
                    ),
                    const SizedBox(height: 15),
                    AuthButton(
                      content: const Text("Connexion"),
                      action: () {
                        if (globalKey.currentState!.validate()) {
                          model.logIn();
                        }
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
                            fontFamily: fontFamily,
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            "Créer un compte",
                            style: TextStyle(
                              fontFamily: fontFamily,
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
      ),
    );
  }
}
