// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stacked/stacked.dart';

// Project imports:
import 'package:unahorro_mobile/ui/widgets/organisms/navbar/bottom_navbar_viewmodel.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class BottomNavbarView extends StatelessWidget {

  final void Function(int)? changeIndex;
  final int currentIndex;

  const BottomNavbarView({
    Key? key,
    required this.changeIndex,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    return ViewModelBuilder.reactive(
      builder: (context, BottomNavbarViewModel model, child) => BottomAppBar(
        child: Container(
          color: colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
            child: GNav(
              backgroundColor: colors.black,
              color: colors.secondary,
              activeColor: colors.background,
              tabBackgroundColor: colors.secondary,
              padding: const EdgeInsets.all(16),
              gap: 8,
              onTabChange: changeIndex,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: "Inicio",             
                ),
                GButton(
                  icon: Icons.emoji_events_outlined,
                  text: "Progreso"
                ),
                GButton(
                  icon: Icons.forum_outlined,
                  text: "Foro"
                ),
                GButton(
                  icon: Icons.person_outlined,
                  text: "Perfil"
                )
              ]
            )
          ),
        ),
      ),
      viewModelBuilder: () => BottomNavbarViewModel(),
    );
  }
}
