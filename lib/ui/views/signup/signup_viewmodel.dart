// Package imports:
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// Project imports:
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/app/app.router.dart';

class SignupViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();

  void navigateToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }

}
