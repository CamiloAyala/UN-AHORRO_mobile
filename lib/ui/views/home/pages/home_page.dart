// Flutter imports:
import 'package:flutter/material.dart';
import 'package:unahorro_mobile/ui/views/home/home_viewmodel.dart';

// Project imports:
import 'package:unahorro_mobile/ui/widgets/organisms/carousel/carousel.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;
import 'package:unahorro_mobile/utils/constraints.dart' as constraints;

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeViewModel model = HomeViewModel();

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        const SizedBox(height: 40),
        const Carousel(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 128,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: colors.secondary, width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: const [
                    Icon(Icons.workspace_premium_outlined, color: colors.black,  size: 28),
                    Text('Nivel 1', style: TextStyle(color: colors.white, fontSize: 16, letterSpacing: 0.5, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Container(
                width: 175,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: colors.secondary, width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 3),
                      child: Icon(Icons.celebration_outlined, color: colors.black, size: 28),
                    ),
                    Text('Racha de ', style: TextStyle(color: colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w500)),
                    Text('2 días', style: TextStyle(color: colors.warning, letterSpacing: 0.5, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Aprende",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: colors.white,
                  fontFamily: "Lato",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5              
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(50, 24, 50, 0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
              color: colors.black,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const [
                        Text(
                          "Nivel actual",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: colors.white,
                            fontFamily: "Lato",
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.5              
                          ),
                        ),
                        Text(
                          "Nivel 1",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: colors.warning,
                            fontFamily: "Lato",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5              
                          ),
                        ),
                      ],

                    ),

                    Container(
                      width: 110,
                      child: ElevatedButton(
                        onPressed: () => model.navigateToContent() ,
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textStyle: const TextStyle(
                            color: colors.black,
                            fontFamily: "Lato",
                            fontSize: constraints.btnFontSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        child: Ink(
                          child: Container(
                            width: double.infinity,
                            height: 32,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Empezar",
                                  style: TextStyle(
                                    color: colors.black,
                                    fontFamily: "Lato",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 22,
                                  color: colors.black,                   
                                ),
                              ],
                            ),
                            ),
                          ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 14, width: double.infinity),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          width: 60,
                          decoration: const BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Image.asset('images/content1.png', width: 40),
                        ),
                        Container(
                          width: 60,
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "Finanzas personales",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colors.white,
                              fontFamily: "Lato",
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5              
                            ),
                          ),
                        )
                      ],

                    ),

                    const SizedBox(width: 47),

                    Column(
                      children: [
                        Container(
                          width: 60,
                          decoration: const BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Image.asset('images/content2.png', width: 40),
                        ),
                        Container(
                          width: 60,
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "Tasas de interés",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colors.white,
                              fontFamily: "Lato",
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5              
                            ),
                          ),
                        )
                      ],

                    ),
                  ],
                ),
              ],
            )
          )
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 60),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: colors.warning, width: 2),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const [
                        Text(
                          "Nivel 2",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: colors.warning,
                            fontFamily: "Lato",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5              
                          ),
                        ),
                      ],

                    ),

                    Container(
                      width: 40,
                      child: Ink(
                        decoration: const BoxDecoration(
                          color: colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: IconButton(
                          iconSize: 24,
                          onPressed: () {},
                          icon: const Icon(Icons.lock_outlined, color: colors.black),
                        ),
                      )
                    )
                  ],
                ),

                const SizedBox(height: 14, width: double.infinity),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          width: 60,
                          decoration: const BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Image.asset('images/content1.png', width: 40),
                        ),
                        Container(
                          width: 60,
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "Ahorro",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colors.white,
                              fontFamily: "Lato",
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5              
                            ),
                          ),
                        )
                      ],

                    ),

                    const SizedBox(width: 47),

                    Column(
                      children: [
                        Container(
                          width: 60,
                          decoration: const BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Image.asset('images/content2.png', width: 40),
                        ),
                        Container(
                          width: 60,
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "Préstamos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colors.white,
                              fontFamily: "Lato",
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5              
                            ),
                          ),
                        )
                      ],

                    ),

                    const SizedBox(width: 47),

                    Column(
                      children: [
                        Container(
                          width: 60,
                          decoration: const BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Image.asset('images/content1.png', width: 40),
                        ),
                        Container(
                          width: 60,
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "CDT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colors.white,
                              fontFamily: "Lato",
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5              
                            ),
                          ),
                        )
                      ],

                    ),

                  ],
                ),
              ],
            )
          )
        ),

      ],
    );
  }
}
