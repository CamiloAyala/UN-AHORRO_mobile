// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

// Project imports:
import 'package:unahorro_mobile/ui/views/home/home_viewmodel.dart';
import 'package:unahorro_mobile/ui/views/home/pages/forum_page.dart';
import 'package:unahorro_mobile/ui/views/home/pages/home_page.dart';
import 'package:unahorro_mobile/ui/views/home/pages/profile_page.dart';
import 'package:unahorro_mobile/ui/views/home/pages/progress_page.dart';
import 'package:unahorro_mobile/ui/widgets/organisms/navbar/bottom_navbar_view.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class HomeView extends StatelessWidget {
  HomeView({ Key? key }) : super(key: key);

  final String logo = 'images/Logo_2.svg';

  final List<Widget> pages = [
    const Center(child: HomePage()),
    const Center(child: ProgressPage()),
    const Center(child: ForumPage()),
    const Center(child: ProfilePage()),
  ];


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, HomeViewModel model, Widget? child) => Scaffold(

        resizeToAvoidBottomInset: false,
        backgroundColor: colors.background,

        appBar: AppBar(
          title: SvgPicture.asset('images/Logo_2.svg', height: 25, width: 160),
          centerTitle: true,
          elevation: 0,
          backgroundColor: colors.background,
        ),

        body: SingleChildScrollView(child: pages[model.currentIndex]),

        bottomNavigationBar: BottomNavbarView(
          changeIndex: model.changeIndex,
          currentIndex: model.currentIndex,
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
