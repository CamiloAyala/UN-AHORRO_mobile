import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:unahorro_mobile/ui/views/start/start_viewmodel.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/submit_button.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class StartView extends StatelessWidget {
  const StartView({ Key? key }) : super(key: key);

  final logoPath = "images/Logo_2.svg";
  final illustrationPath = "images/personal_finance.svg";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder.reactive(
      builder: (context, StartViewModel model, child) => SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: SvgPicture.asset(
                    logoPath,
                    height: 52,
                  )
                ),

                const SizedBox(height: 54),

                Center(
                  child: SvgPicture.asset(
                    illustrationPath,
                    height: 330,
                  )
                ),

                const SizedBox(height: 48),

                SizedBox(
                  width: screenSize.width * 0.65,
                  child: const Text(
                    "Aprende finanzas personales de una manera diferente",
                    style: TextStyle(
                      color: colors.white,
                      fontFamily: "Lato",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 54),
                  child: SubmitButton(
                    text: "Iniciar sesión",
                    textColor: colors.background,
                    buttonColor: colors.secondary,
                    onPressed: () => model.nextScreen(),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
      viewModelBuilder: (() => StartViewModel()),
    );
  }
}