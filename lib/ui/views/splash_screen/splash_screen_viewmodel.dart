// Dart imports:
import 'dart:async';

// Package imports:
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:unahorro_mobile/app/app.router.dart';
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:unahorro_mobile/services/secure_storage_service.dart';

class SplashScreenViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();
  final _storageService = locator<SecureStorageService>();

  SplashScreenViewModel() {
    Timer(const Duration(seconds: 3), _nextScreen);
  }

  Future<bool> _isSessionActive() async {
    
    String? token = await _storageService.getStringValue(key: 'accessToken');
    if (token != null) {
      if(!JwtDecoder.isExpired(token)) {
        return true;
      }
      else{
        await _storageService.deleteValue(key: 'accessToken');
        return false;
      }
    }
    return false;
  }

  Future _navigateToLogin() async {
    await _navigationService.clearStackAndShow(Routes.loginView);
  }

  Future _navigateToHome() async {
    await _navigationService.clearStackAndShow(Routes.homeView);
  }

  _nextScreen() async {
    _navigateToLogin();
  }

}
