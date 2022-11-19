import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:unahorro_mobile/utils/constraints.dart' as constraints;

class GoogleButton extends StatelessWidget {

  final String text;
  final Function()? onPressed;
  final bool withBorder;
  final Color borderColor;

  final String googleIconPath = "images/Google.svg";

  const GoogleButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.withBorder = false,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        side: BorderSide(
          color: borderColor,
          width: withBorder ? 1 : 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(constraints.btnRadius),
          side: BorderSide(
            color: borderColor,
            width: withBorder ? 1 : 0,
          ),
        ),
      ),
      child: Ink(
        child: Container(
          width: double.infinity,
          height: constraints.btnHeight,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                googleIconPath,
                height: 24,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "Lato",
                  fontSize: constraints.btnFontSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}