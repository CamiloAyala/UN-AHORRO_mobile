import 'package:flutter/material.dart';
import 'package:unahorro_mobile/ui/views/content/content_viewmodel.dart';
import 'package:unahorro_mobile/ui/views/content/pages/content_page2.dart';
import 'package:unahorro_mobile/ui/widgets/atoms/submit_button.dart';

// Project imports:
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class ContentPage1 extends StatelessWidget {
  ContentPage1({Key? key}) : super(key: key);

  ContentViewModel model = ContentViewModel();

  static const String title = "¿Qué son las finanzas personales?";
  static const String parragraph1 = "Las finanzas personales son el conjunto de acciones que se realizan para administrar el dinero de una manera eficiente y eficaz, con el fin de alcanzar los objetivos personales y familiares.";
  static const String parragraph2 = "Tempus egestas sed sed risus pretium quam. In nulla posuere sollicitudin aliquam. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. ";

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              '80 puntos',
              style: TextStyle(
                fontFamily: 'Lato', 
                color: colors.black, 
                fontSize: 12, 
                fontWeight: FontWeight.bold
              )
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: colors.white,
                fontFamily: "Lato",
                fontSize:24,
                letterSpacing: 0.5,
                height: 2,
                fontWeight: FontWeight.w900,                      
              ),
            )
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 12),
            child: const Text(
              parragraph1,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: colors.white,
                height: 2,
                fontFamily: "Lato",
                fontSize:16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,                     
              ),
            )
          ),

          const SizedBox(height: 20),

          Image.asset('images/image1.png', height: 124),

          const SizedBox(height: 20),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 12),
            child: const Text(
              parragraph2,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: colors.white,
                height: 2,
                fontFamily: "Lato",
                fontSize:16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,                     
              ),
            )
          ),


          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 68),
            child: SubmitButton(
              text: "Continuar",
              textColor: colors.black,
              buttonColor: colors.secondary,
              onPressed: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContentPage2()));
               },
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
      )
    );
  }

}