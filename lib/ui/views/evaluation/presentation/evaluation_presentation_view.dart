import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:unahorro_mobile/ui/views/evaluation/presentation/evaluation_presentation_viewmodel.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/submit_button.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class EvaluationPresentationView extends StatelessWidget {
  const EvaluationPresentationView({Key? key}) : super(key: key);

  final String illustrationPath = "images/Book_lover-bro.svg";
  static const String initialEvaluationText = "Empezaremos con una corta evaluación para medir tu nivel de conocimientos en algunos temas relacionados con las finanzas personales";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder.reactive(
      builder: (context, EvaluationPresentationViewModel model, child) => SafeArea(
        child: Scaffold (
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.background,
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
              child: Column(
                children: <Widget>[

                  SizedBox(
                    width: screenSize.width,
                    child: SvgPicture.asset(illustrationPath, height: 380),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Evaluación",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: colors.secondary,
                            fontFamily: "Lato",
                            fontSize: 30,
                            fontWeight: FontWeight.w900                      
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 36),
                    child: const Text(
                      initialEvaluationText,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: colors.secondary,
                        fontFamily: "Lato",
                        fontSize: 18,
                        fontWeight: FontWeight.w700                      
                      ),
                    )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 68),
                    child: SubmitButton(
                      text: "Empezar",
                      textColor: colors.black,
                      buttonColor: colors.secondary,
                      onPressed: () { },
                      withSuffixIcon: true,
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Icon(
                          Icons.arrow_right_alt,
                          size: 24,
                          color: colors.black,                   
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => EvaluationPresentationViewModel(),
    );
  }
}