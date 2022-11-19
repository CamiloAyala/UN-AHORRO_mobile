// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

// Project imports:
import 'package:unahorro_mobile/ui/views/login/login_viewmodel.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/account_question.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/entry_field.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/google_button.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/separator.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/submit_button.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final logoPath = "images/Piggy.svg";
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder.reactive(
      builder: (context, LoginViewModel model, child) => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.secondary,
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
              child: Column(
                children: <Widget>[

                  SizedBox(
                    width: screenSize.width,
                    height: screenSize.height * 0.25,
                    child: SvgPicture.asset(logoPath, height: 215),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Iniciar Sesión",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: colors.black,
                            fontFamily: "Lato",
                            fontSize: 30,
                            fontWeight: FontWeight.w900                      
                          ),
                        ),
                      ],
                    ),
                  ),

                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        const EntryField(
                          padding: 32,
                          labelText: "Correo electrónico",
                          hintText: "Correo electrónico",
                          textType: TextInputType.emailAddress,
                        ),

                        EntryField(
                          padding: 24,
                          labelText: "Contraseña",
                          hintText: "Contraseña",
                          isPassword: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                              color: colors.background
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),

                      ],
                    )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SubmitButton(
                      text: "Iniciar sesión",
                      textColor: colors.secondary,
                      buttonColor: colors.background,
                      onPressed: () => {},
                    ),
                  ),

                  const Separator(text: "O"),

                  GoogleButton(
                    text: "Inicia sesión con Google",
                    borderColor: Colors.black,
                    withBorder: true,
                    onPressed: () => { }
                  ),

                  AccountQuestion(
                    question: "¿Aún no tienes una cuenta?",
                    acction: "Registrate",
                    onPressed: () => {
                      model.navigateToSignup()
                    },
                    padding: 28
                  )
                ]
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
