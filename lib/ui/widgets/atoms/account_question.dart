import 'package:flutter/material.dart';

import 'package:unahorro_mobile/utils/colors.dart' as colors;
import 'package:unahorro_mobile/utils/constraints.dart' as constraints;

class AccountQuestion extends StatelessWidget {
  final String question;
  final String acction;
  final Function()? onPressed;
  final double padding;

  const AccountQuestion({
    Key? key,
    required this.question,
    required this.acction,
    required this.onPressed,
    required this.padding
  }): super(key: key);

  @override
  Widget build (BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            question,
            style: const TextStyle(
              color: colors.tertirary,
              fontFamily: "Lato",
              fontSize: constraints.btnFontSize,
              fontWeight: FontWeight.w400
            ),
          ),
          TextButton(
            onPressed: () => {}, 
            child: Text(
              acction,
              style: const TextStyle(
                color: colors.tertirary,
                fontFamily: "Lato",
                fontSize: constraints.btnFontSize,
                fontWeight: FontWeight.w700
              ),
            )
          )
        ],
      ),
    );
  }
}