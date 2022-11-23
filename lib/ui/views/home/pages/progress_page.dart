import 'package:flutter/material.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class ProgressPage extends StatelessWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: 
            Image.asset('images/avatar.png', width: 128),
        ),
        Container(
          width: 70,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'Nivel 4',
            style: TextStyle(
              fontFamily: 'Lato', 
              color: colors.black, 
              fontSize: 12, 
              fontWeight: FontWeight.bold
            )
          ),
        ),

        Container(
          padding: const EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: const Text(
            'Kaiya Geidt',
            style: TextStyle(
              fontFamily: 'Lato', 
              color: colors.white, 
              fontSize: 20, 
              fontWeight: FontWeight.bold
            )
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 16,
              width: double.infinity,
              child: const LinearProgressIndicator(              
                value: 0.7,
                backgroundColor: Color(0xFFD9D9D9),
              valueColor: AlwaysStoppedAnimation<Color>(colors.black),
              ),
            )
          ),
        ),

        Container(
          padding: const EdgeInsets.fromLTRB(50, 4, 50, 0),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Puntos 200/500',
                style: TextStyle(
                  fontFamily: 'Lato', 
                  color: colors.white, 
                  fontSize: 12, 
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                '300 Puntos para subir de nivel',
                style: TextStyle(
                  fontFamily: 'Lato', 
                  color: colors.white, 
                  fontSize: 12, 
                  fontWeight: FontWeight.normal
                )
              ),
            ],
          )
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(50, 24, 50, 0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Logros (2)",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: colors.white,
                        fontFamily: "Lato",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5              
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'Ver todos',
                            style: TextStyle(
                              color: colors.secondary,
                              fontFamily: "Lato",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5              
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: colors.secondary,
                            size: 12,
                          )
                        ],
                    
                      )
                    ),
                  ],
                ),

                const SizedBox(height: 14, width: double.infinity),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          child: Image.asset('images/Badge1.png', width: 70),
                        ),                        
                      ],

                    ),

                    const SizedBox(width: 47),

                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          child: Image.asset('images/Badge2.png', width: 70),
                        ),                        
                      ],
                    ),
                  ],
                ),
              ],
            )
          )
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Temas aprendidos (3)",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: colors.white,
                        fontFamily: "Lato",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5              
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'Ver todos',
                            style: TextStyle(
                              color: colors.secondary,
                              fontFamily: "Lato",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5              
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: colors.secondary,
                            size: 12,
                          )
                        ],
                    
                      )
                    ),
                  ],
                ),

                const SizedBox(height: 14, width: double.infinity),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          child: Image.asset('images/content1.png', width: 70),
                        ),
                      ],

                    ),

                    const SizedBox(width: 47),

                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          child: Image.asset('images/content2.png', width: 70),
                        ),
                      ],
                    ),

                    const SizedBox(width: 47),

                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          child: Image.asset('images/content1.png', width: 70),
                        ),
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