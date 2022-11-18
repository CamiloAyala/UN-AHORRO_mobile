// Package imports:
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// Project imports:
import '../ui/views/splash_screen/splash_screen_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreenView, path: '/start', initial: true),
], dependencies: [
  LazySingleton(classType: NavigationService),
])

class AppSetup { }
