import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class ForumPage extends StatelessWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset('images/Innovation-bro.svg', width: 320),
          const SizedBox(height: 20),
          const Text('Próximamente podrás acceder a los foros', style: TextStyle(fontSize: 22, color: colors.white, fontFamily: 'Lato', fontWeight: FontWeight.w400)),
        ],
      )
    );
  }

}