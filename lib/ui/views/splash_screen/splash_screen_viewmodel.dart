// Dart imports:
import 'dart:async';

// Package imports:
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel {

  SplashScreenViewModel() {
    Timer(const Duration(seconds: 3), _nextScreen);
  }

  _nextScreen() async {
    
  }

}
