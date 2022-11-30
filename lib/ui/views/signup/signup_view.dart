// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

// Project imports:
import 'package:unahorro_mobile/ui/views/signup/signup_viewmodel.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/account_question.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/entry_field.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/google_button.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/separator.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/submit_button.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class SignupView extends StatefulWidget{
  const SignupView({ Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignupView> {

  final logoPath = "assets/images/Piggy.svg";
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    SnackBar snackBar;
    final screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder.reactive(
      builder: (context, SignupViewModel model, child) => SafeArea(
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
                    child: SvgPicture.asset(logoPath, height: 145),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Crea una cuenta",
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

                        EntryField(
                          padding: 22,
                          labelText: "Nombre",
                          hintText: "Nombre",
                          textType: TextInputType.text,
                          onChanged: model.changeFirstName,
                        ),

                        EntryField(
                          padding: 16,
                          labelText: "Apellidos",
                          hintText: "Apellidos",
                          textType: TextInputType.text,
                          onChanged: model.changeLastName,
                        ),

                        EntryField(
                          padding: 16,
                          labelText: "Correo electrónico",
                          hintText: "Correo electrónico",
                          textType: TextInputType.emailAddress,
                          onChanged: model.changeEmail,
                        ),

                        EntryField(
                          padding: 16,
                          labelText: "Contraseña",
                          hintText: "Contraseña",
                          isPassword: !_passwordVisible,
                          onChanged: model.changePassword,
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
                    padding: const EdgeInsets.only(top: 30),
                    child: SubmitButton(
                      text: "Registrate",
                      textColor: colors.secondary,
                      buttonColor: colors.background,
                      onPressed: () async {

                        Set<Object> response = await model.signUp();

                        if (response.contains(200)) {
                          snackBar = SnackBar(
                            content: Text(response.elementAt(2).toString()),
                            backgroundColor: colors.black,
                          );
                        } 
                        else if(response.contains(400)) {
                          snackBar = SnackBar(
                            content: Text(response.elementAt(2).toString()),
                            backgroundColor: colors.warning,
                          );
                        }
                        else{
                          snackBar = SnackBar(
                            content: Text(response.elementAt(2).toString()),
                            backgroundColor: colors.warning,
                          );
                        }

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      },
                    ),
                  ),

                  const Separator(text: "O"),

                  GoogleButton(
                    text: "Registrate con Google",
                    borderColor: Colors.black,
                    withBorder: true,
                    onPressed: () => {

                      snackBar = const SnackBar(
                        content: Text("Proximamente."),
                        backgroundColor: colors.black,
                      ),

                      ScaffoldMessenger.of(context).showSnackBar(snackBar)
                    }
                  ),

                  AccountQuestion(
                    question: "¿Ya tienes una cuenta?",
                    acction: "Inicia sesión",
                    onPressed: () => model.navigateToLogin(),
                    padding: 20
                  )
                ]
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SignupViewModel(),
    );
  }
}
