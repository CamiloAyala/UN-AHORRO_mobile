import 'package:flutter/material.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class Question extends StatelessWidget {

  final String questionText;

  const Question({
    Key? key,
    required this.questionText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: colors.white,
        ),
      ),
    );
  }

}