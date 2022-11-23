import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset('images/Innovation-bro.svg', width: 320),
          const SizedBox(height: 20),
          const Text('Próximamente podrás revisar tu información', style: TextStyle(fontSize: 22, color: colors.white, fontFamily: 'Lato', fontWeight: FontWeight.w400)),
        ],
      )
    );
  }

}