// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 400,
        child: Center(
          child: CircularProgressIndicator(color: colors.white,)
        )
      )
    );
  }
}
