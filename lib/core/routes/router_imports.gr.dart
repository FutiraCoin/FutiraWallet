// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/auth/presentation/pages/intro_screen/intro_screen_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/select_language/select_language_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/verify_code/verify_code_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/general/presentation/pages/location_address/LocationAddressImports.dart'
    as _i12;
import 'package:flutter_tdd/features/general/presentation/pages/repeated_questions/repeated_questions_imports.dart'
    as _i11;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i10;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    SelectLanguageRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.SelectLanguage());
    },
    LoginRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    IntroScreenRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.IntroScreen());
    },
    RegisterRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.Register());
    },
    ActiveAccountRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ActiveAccount());
    },
    VerifyCodeRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.VerifyCode());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.ResetPassword());
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.ForgetPassword());
    },
    TermsRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.Terms());
    },
    RepeatedQuestionsRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.RepeatedQuestions());
    },
    LocationAddressRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: _i12.LocationAddress());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashRoute.name, path: '/'),
        _i13.RouteConfig(SelectLanguageRoute.name, path: '/select-language'),
        _i13.RouteConfig(LoginRoute.name, path: '/Login'),
        _i13.RouteConfig(IntroScreenRoute.name, path: '/intro-screen'),
        _i13.RouteConfig(RegisterRoute.name, path: '/Register'),
        _i13.RouteConfig(ActiveAccountRoute.name, path: '/active-account'),
        _i13.RouteConfig(VerifyCodeRoute.name, path: '/verify-code'),
        _i13.RouteConfig(ResetPasswordRoute.name, path: '/reset-password'),
        _i13.RouteConfig(ForgetPasswordRoute.name, path: '/forget-password'),
        _i13.RouteConfig(TermsRoute.name, path: '/Terms'),
        _i13.RouteConfig(RepeatedQuestionsRoute.name,
            path: '/repeated-questions'),
        _i13.RouteConfig(LocationAddressRoute.name, path: '/location-address')
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SelectLanguage]
class SelectLanguageRoute extends _i13.PageRouteInfo<void> {
  const SelectLanguageRoute()
      : super(SelectLanguageRoute.name, path: '/select-language');

  static const String name = 'SelectLanguageRoute';
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/Login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.IntroScreen]
class IntroScreenRoute extends _i13.PageRouteInfo<void> {
  const IntroScreenRoute()
      : super(IntroScreenRoute.name, path: '/intro-screen');

  static const String name = 'IntroScreenRoute';
}

/// generated route for
/// [_i5.Register]
class RegisterRoute extends _i13.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/Register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i6.ActiveAccount]
class ActiveAccountRoute extends _i13.PageRouteInfo<void> {
  const ActiveAccountRoute()
      : super(ActiveAccountRoute.name, path: '/active-account');

  static const String name = 'ActiveAccountRoute';
}

/// generated route for
/// [_i7.VerifyCode]
class VerifyCodeRoute extends _i13.PageRouteInfo<void> {
  const VerifyCodeRoute() : super(VerifyCodeRoute.name, path: '/verify-code');

  static const String name = 'VerifyCodeRoute';
}

/// generated route for
/// [_i8.ResetPassword]
class ResetPasswordRoute extends _i13.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i9.ForgetPassword]
class ForgetPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(ForgetPasswordRoute.name, path: '/forget-password');

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i10.Terms]
class TermsRoute extends _i13.PageRouteInfo<void> {
  const TermsRoute() : super(TermsRoute.name, path: '/Terms');

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i11.RepeatedQuestions]
class RepeatedQuestionsRoute extends _i13.PageRouteInfo<void> {
  const RepeatedQuestionsRoute()
      : super(RepeatedQuestionsRoute.name, path: '/repeated-questions');

  static const String name = 'RepeatedQuestionsRoute';
}

/// generated route for
/// [_i12.LocationAddress]
class LocationAddressRoute extends _i13.PageRouteInfo<void> {
  const LocationAddressRoute()
      : super(LocationAddressRoute.name, path: '/location-address');

  static const String name = 'LocationAddressRoute';
}
