// Package imports:
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// Project imports:
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/app/app.router.dart';
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/secure_storage_service.dart';
import 'package:unahorro_mobile/services/user_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final UserService userService = locator<UserService>();
  final SecureStorageService secureStorageService =
      locator<SecureStorageService>();

  String email = '';
  String password = '';

  void navigateToSignup(){
    _navigationService.navigateTo(Routes.signupView);
  }

  changeEmail(String value){
    email = value;
    notifyListeners();
  }

  changePassword(String value){
    password = value;
    notifyListeners();
  }

  Future userLogin() async {

    ServerResponseModel response = await userService.getToken(email: email, password: password);

    if(!response.hasError){

      String token = response.data['login']['token'];

      await setAccessToken(token);
      await setUserInfo(token);
      _navigationService.navigateTo(Routes.homeView);
    }
  }

  setAccessToken(String data) async {
    await secureStorageService.storeStringValue(key: 'token', value: data);
  }

  setUserInfo(String token) async {
    Map<String, dynamic> userInfo = JwtDecoder.decode(token);
    String id = userInfo['id'].toString();
    print('id: $id');
    await secureStorageService.storeStringValue(key: 'userId', value: id);

  }

}
