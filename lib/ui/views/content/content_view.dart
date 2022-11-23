import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:unahorro_mobile/ui/views/content/content_viewmodel.dart';
import 'package:unahorro_mobile/ui/views/content/pages/content_page1.dart';
import 'package:unahorro_mobile/ui/views/content/pages/content_page2.dart';
import 'package:unahorro_mobile/utils/colors.dart' as colors;

class ContentView extends StatelessWidget {
  ContentView({Key? key}) : super(key: key);

  final List<Widget> pages = [
    ContentPage1(),
    ContentPage2(),
  ];

  @override
  Widget build(BuildContext context){
    return ViewModelBuilder.reactive(
      builder: (context, ContentViewModel model, child) => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.background,
          appBar: AppBar(
            title: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 10,
                width: 250,
                child: const LinearProgressIndicator(              
                  value: 0.2,
                  backgroundColor: Color(0xFFD9D9D9),
                valueColor: AlwaysStoppedAnimation<Color>(colors.black),
                ),
              )
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: colors.background,
          ),
          body: SingleChildScrollView(
            child: pages[model.currentIndex]
          ),
        ),
      ),
      viewModelBuilder: () => ContentViewModel(),
    );
  }

}