// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i11;
import 'package:unahorro_mobile/ui/views/content/content_view.dart' as _i9;
import 'package:unahorro_mobile/ui/views/evaluation/presentation/evaluation_presentation_view.dart'
    as _i6;
import 'package:unahorro_mobile/ui/views/evaluation/questions/questions_view.dart'
    as _i7;
import 'package:unahorro_mobile/ui/views/home/home_view.dart' as _i8;
import 'package:unahorro_mobile/ui/views/login/login_view.dart' as _i4;
import 'package:unahorro_mobile/ui/views/signup/signup_view.dart' as _i5;
import 'package:unahorro_mobile/ui/views/splash_screen/splash_screen_view.dart'
    as _i2;
import 'package:unahorro_mobile/ui/views/start/start_view.dart' as _i3;

class Routes {
  static const splashScreenView = '/splash';

  static const startView = '/start';

  static const loginView = '/login';

  static const signupView = '/signup';

  static const evaluationPresentationView = '/evaluation';

  static const questionsView = '/questions';

  static const homeView = '/home';

  static const contentView = '/content1';

  static const all = <String>{
    splashScreenView,
    startView,
    loginView,
    signupView,
    evaluationPresentationView,
    questionsView,
    homeView,
    contentView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashScreenView,
      page: _i2.SplashScreenView,
    ),
    _i1.RouteDef(
      Routes.startView,
      page: _i3.StartView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i5.SignupView,
    ),
    _i1.RouteDef(
      Routes.evaluationPresentationView,
      page: _i6.EvaluationPresentationView,
    ),
    _i1.RouteDef(
      Routes.questionsView,
      page: _i7.QuestionsView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i8.HomeView,
    ),
    _i1.RouteDef(
      Routes.contentView,
      page: _i9.ContentView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashScreenView(),
        settings: data,
      );
    },
    _i3.StartView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.SignupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SignupView(),
        settings: data,
      );
    },
    _i6.EvaluationPresentationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.EvaluationPresentationView(),
        settings: data,
      );
    },
    _i7.QuestionsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.QuestionsView(),
        settings: data,
      );
    },
    _i8.HomeView: (data) {
      final args = data.getArgs<HomeViewArguments>(
        orElse: () => const HomeViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i8.HomeView(key: args.key),
        settings: data,
      );
    },
    _i9.ContentView: (data) {
      final args = data.getArgs<ContentViewArguments>(
        orElse: () => const ContentViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i9.ContentView(key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class HomeViewArguments {
  const HomeViewArguments({this.key});

  final _i10.Key? key;
}

class ContentViewArguments {
  const ContentViewArguments({this.key});

  final _i10.Key? key;
}

extension NavigatorStateExtension on _i11.NavigationService {
  Future<dynamic> navigateToSplashScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEvaluationPresentationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.evaluationPresentationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToQuestionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.questionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.homeView,
        arguments: HomeViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToContentView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.contentView,
        arguments: ContentViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
