// Package imports:
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/app/app.router.dart';

// Project imports:
import 'package:unahorro_mobile/services/user_services.dart';

class HomeViewModel extends BaseViewModel {
  final UserService userService = UserService();
  final _navigationService = locator<NavigationService>(); 

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

  void navigateToContent() {
    _navigationService.navigateTo(Routes.contentView);
  }
}
