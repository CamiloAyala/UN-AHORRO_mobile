// Package imports:
import 'package:stacked/stacked.dart';
import 'package:unahorro_mobile/services/user_services.dart';

class HomeViewModel extends BaseViewModel {
  final UserService userService = UserService();

  String? _name;
  String? _photoURL;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void changeIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }

  HomeViewModel(){
    _name = userService.userName;
    _photoURL = userService.photoURL;

    print(_name);
    print(_photoURL);
  }

  String get name => _name ?? "";
  String get photoURL => _photoURL ?? "";
}
