// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:unahorro_mobile/utils/constraints.dart' as constraints;

class SubmitButton extends StatelessWidget {

  final String text;
  final Function()? onPressed;
  final Color textColor;
  final Color buttonColor;

  const SubmitButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.textColor,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(constraints.btnRadius),
        ),
        textStyle: TextStyle(
          color: textColor,
          fontFamily: "Lato",
          fontSize: constraints.btnFontSize,
          fontWeight: FontWeight.w700,
        ),
      ),
      child: Ink(
        child: Container(
          width: double.infinity,
          height: constraints.btnHeight,
          alignment: Alignment.center,
          child: Text(text),
        ),
      )
    );
  }
}
