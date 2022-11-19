// Package imports:
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:unahorro_mobile/services/secure_storage_service.dart';
import 'package:unahorro_mobile/ui/views/home/home_view.dart';
import 'package:unahorro_mobile/ui/views/login/login_view.dart';

// Project imports:
import '../ui/views/splash_screen/splash_screen_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreenView, path: '/start', initial: true),
    MaterialRoute(page: LoginView, path: '/login'),
    MaterialRoute(page: HomeView, path: '/home'),
], 
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SecureStorageService),
])

class AppSetup { }
