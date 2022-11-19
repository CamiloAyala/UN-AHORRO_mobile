import 'package:flutter/material.dart';

import 'package:unahorro_mobile/utils/colors.dart' as colors;
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';

class Separator extends StatelessWidget {
  final String text;

  const Separator({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 20),
          customExpanded(),
          Conditional.single(
            context: context,
            conditionBuilder: (BuildContext context) => text.isNotEmpty,
            widgetBuilder: (BuildContext context) => (
              Text(text, style: const TextStyle(color: colors.background))
            ), 
            fallbackBuilder: (BuildContext context) => const SizedBox.shrink() 
          ),
          customExpanded(),
          const SizedBox(width: 20)
        ],
      ),
    );
  }

  Widget customExpanded(){
  return Expanded(
    child: Padding(
      padding: text.isNotEmpty
        ? const EdgeInsets.symmetric(horizontal: 10)
        : EdgeInsets.zero,
      child: const Divider(
        thickness: 1,
        color: colors.background,
      ),
    ),
  );
}

}