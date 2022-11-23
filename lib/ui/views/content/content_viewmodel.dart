// Package imports:
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// Project imports:
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/app/app.router.dart';

class ContentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void navigateToHome(){
    _navigationService.clearStackAndShow(Routes.homeView);
  }
}
