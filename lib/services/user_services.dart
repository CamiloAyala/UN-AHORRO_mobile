// Dart imports:
import 'dart:async';

// Project imports:
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/api/mutations/signup.dart';
import 'package:unahorro_mobile/services/api/queries/user_login.dart';

class UserService {

  String _userName = "";
  String _photoURL = "";

  String get userName => _userName;
  String get photoURL => _photoURL;

  set userName(String value) {
    _userName = value;
  }

  set photoURL(String value) {
    _photoURL = value;
  }

  Future<ServerResponseModel> getToken (
    {required String email, required String password}) async {

      ServerResponseModel response;
  
      response = await login(email: email, password: password);

      if(response.data != null){
        userName = response.data!['login']['firstName'] + ' ' + response.data!['login']['lastName'];
        photoURL = response.data!['login']['photo'];

      }

      return response;
   
  }

  Future <ServerResponseModel> createUser ({
    required String firstName, required String lastName, required String email, required String password}) async {

      ServerResponseModel response;

      response = await signup(firstName: firstName, lastName: lastName, email: email, password: password);

      return response;
  }

}
