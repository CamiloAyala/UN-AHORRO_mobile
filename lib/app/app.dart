// Package imports:
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// Project imports:
import 'package:unahorro_mobile/services/secure_storage_service.dart';
import 'package:unahorro_mobile/ui/views/home/home_view.dart';
import 'package:unahorro_mobile/ui/views/login/login_view.dart';
import 'package:unahorro_mobile/ui/views/signup/signup_view.dart';
import 'package:unahorro_mobile/ui/views/splash_screen/splash_screen_view.dart';
import 'package:unahorro_mobile/ui/views/start/start_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreenView, path: '/splash', initial: true),
    MaterialRoute(page: StartView, path: '/start'),
    MaterialRoute(page: LoginView, path: '/login'),
    MaterialRoute(page: SignupView, path: '/signup'),
    MaterialRoute(page: HomeView, path: '/home'),
], 
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SecureStorageService),
])

class AppSetup { }
