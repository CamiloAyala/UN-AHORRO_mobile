// Package imports:
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// Project imports:
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/app/app.router.dart';
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/user_services.dart';

class SignupViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();
  final UserService userService = locator<UserService>();

  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  changeFirstName(String value){
    firstName = value;
    notifyListeners();
  }

  changeLastName(String value){
    lastName = value;
    notifyListeners();
  }

  changeEmail(String value){
    email = value;
    notifyListeners();
  }

  changePassword(String value){
    password = value;
    notifyListeners();
  }

  void navigateToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }
  

  Future signUp() async {
    ServerResponseModel response = await userService.createUser(
      firstName: firstName, lastName: lastName ,email: email, password: password
    );

    if(!response.hasError){

      _navigationService.clearStackAndShow(Routes.loginView);
    }
  }

}
