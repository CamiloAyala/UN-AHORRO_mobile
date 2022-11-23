import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unahorro_mobile/ui/views/content/content_viewmodel.dart';

// Project imports:
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class ContentPage2 extends StatelessWidget {
  ContentPage2({Key? key}) : super(key: key);

  ContentViewModel model = ContentViewModel();

  static const String title = "Toma de decisiones";
  static const String parragraph1 = '''Cada opción de decisión conduce a un escenario diferente dentro del contexto.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  ''';

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(

        resizeToAvoidBottomInset: false,
        backgroundColor: colors.background,

        appBar: AppBar(
            title: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 10,
                width: 250,
                child: const LinearProgressIndicator(              
                  value: 0.5,
                  backgroundColor: Color(0xFFD9D9D9),
                valueColor: AlwaysStoppedAnimation<Color>(colors.black),
                ),
              )
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: colors.background,
          ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),

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

                const SizedBox(height: 20),

                Image.asset('images/DecisionImage.png', height: 150),

                const SizedBox(height: 20),

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
                
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ButtonTheme(
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () { 
                            model.navigateToHome();
                          },
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              width: 3,
                              style: BorderStyle.solid,
                              color: colors.white
                            ),
                            backgroundColor: colors.background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text(
                            "Opcion de decisión ${index + 1}",
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: colors.white,
                              fontFamily: "Lato",
                              fontSize: 18,
                              fontWeight: FontWeight.w500                      
                            ),
                          ),
                        ),
                      )
                    ),
                  ),
                )
                

              ],
            ),
          ),
        )
      )
    );
  }

}