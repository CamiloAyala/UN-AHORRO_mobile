// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

// Project imports:
import 'splash_screen_viewmodel.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({ Key? key }) : super(key: key);

  final logoPath = "images/Logo.svg";

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, SplashScreenViewModel model, child) => SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/Logo.svg',
                      width: 200,
                      height: 200,
                    )
                  )
                ]
              ),
            ],
          )
        ),
      ),
      viewModelBuilder: () => SplashScreenViewModel(),
    );
  }
}
