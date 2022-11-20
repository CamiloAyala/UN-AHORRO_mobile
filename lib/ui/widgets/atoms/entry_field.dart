// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class EntryField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final bool isPassword;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double padding;

  final Function(String)? onChanged;
  final TextInputType textType;

  const EntryField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.isPassword = false,
    this.suffixIcon,
    this.prefixIcon,
    required this.padding,
    this.onChanged,
    this.textType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build (BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: padding),
        child: TextFormField(
            obscureText: isPassword,
            keyboardType: textType,
            onChanged: onChanged,
            style: const TextStyle(
              color: colors.black,
              fontFamily: "Lato",
              fontWeight: FontWeight.w700
            ),
            decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: labelText,
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            contentPadding: const EdgeInsets.only(top: 2),
            labelStyle: const TextStyle(
              color: colors.background,
              fontFamily: "Lato",
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            hintStyle: const TextStyle(
              color: colors.background,
              fontFamily: "Lato",
              fontSize: 16,
              fontWeight: FontWeight.w700
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: colors.background)
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: colors.background)
            ),
          ),
        )
      ),
    );
  }

}
