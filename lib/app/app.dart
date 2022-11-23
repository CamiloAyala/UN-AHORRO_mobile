// Package imports:
import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:unahorro_mobile/services/question_service.dart';

// Project imports:
import 'package:unahorro_mobile/services/secure_storage_service.dart';
import 'package:unahorro_mobile/services/user_services.dart';
import 'package:unahorro_mobile/ui/views/evaluation/presentation/evaluation_presentation_view.dart';
import 'package:unahorro_mobile/ui/views/evaluation/questions/questions_view.dart';
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
    MaterialRoute(page: EvaluationPresentationView, path: '/evaluation'),
    MaterialRoute(page: QuestionsView, path: '/questions'),
    MaterialRoute(page: HomeView, path: '/home'),
], 
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SecureStorageService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: QuestionService),
])

class AppSetup { }
