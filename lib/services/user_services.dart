import 'dart:async';

import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/api/queries/user_login.dart';


class UserService {

  String? _userName;
  String? _photoURL;

  String? get userName => _userName ?? "Hola";
  String? get photoURL => _photoURL ?? "Hola";

  Future<ServerResponseModel> getToken (
    {required String email, required String password}) async {

      ServerResponseModel response;
  
      response = await login(email: email, password: password);

      if(response.data != null){
        _userName = response.data!['login']['firstName'] + ' ' + response.data!['login']['lastName'];
        _photoURL = response.data!['login']['photo'];

        print('Hola $_userName');
      }

      return response;
   
  }

}