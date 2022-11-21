// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:unahorro_mobile/ui/views/home/home_viewmodel.dart';
import 'package:unahorro_mobile/ui/widgets/organisms/carousel/carousel.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  final String logo = 'images/Logo_2.svg';
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, HomeViewModel model, Widget? child) => Scaffold(

        appBar: AppBar(
          title: SvgPicture.asset(logo, height: 25, width: 160),
          centerTitle: true,
          elevation: 0,
          backgroundColor: colors.background,
        ),

        body: Column(
          children: const [
            SizedBox(height: 40),
            Carousel(),
            Text('Hola Mundo'),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
