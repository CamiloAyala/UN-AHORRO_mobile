import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/app/app.router.dart';

class StartViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();

  Future navigateToLogin() async{
    _navigationService.navigateToLoginView();
  }

  void nextScreen()async {
    await navigateToLogin();
  }

}