// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i16;
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
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/base/presentation/pages/profile/profile_imports.dart'
    as _i15;
import 'package:flutter_tdd/features/general/presentation/pages/location_address/LocationAddressImports.dart'
    as _i12;
import 'package:flutter_tdd/features/general/presentation/pages/repeated_questions/repeated_questions_imports.dart'
    as _i11;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i10;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    SelectLanguageRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.SelectLanguage());
    },
    LoginRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    IntroScreenRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.IntroScreen());
    },
    RegisterRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.Register());
    },
    ActiveAccountRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ActiveAccount());
    },
    VerifyCodeRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.VerifyCode());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.ResetPassword());
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.ForgetPassword());
    },
    TermsRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.Terms());
    },
    RepeatedQuestionsRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.RepeatedQuestions());
    },
    LocationAddressRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: _i12.LocationAddress());
    },
    HomeRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.Home());
    },
    HomePages.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    ProfileRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i15.Profile());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(SplashRoute.name, path: '/'),
        _i14.RouteConfig(SelectLanguageRoute.name, path: '/select-language'),
        _i14.RouteConfig(LoginRoute.name, path: '/Login'),
        _i14.RouteConfig(IntroScreenRoute.name, path: '/intro-screen'),
        _i14.RouteConfig(RegisterRoute.name, path: '/Register'),
        _i14.RouteConfig(ActiveAccountRoute.name, path: '/active-account'),
        _i14.RouteConfig(VerifyCodeRoute.name, path: '/verify-code'),
        _i14.RouteConfig(ResetPasswordRoute.name, path: '/reset-password'),
        _i14.RouteConfig(ForgetPasswordRoute.name, path: '/forget-password'),
        _i14.RouteConfig(TermsRoute.name, path: '/Terms'),
        _i14.RouteConfig(RepeatedQuestionsRoute.name,
            path: '/repeated-questions'),
        _i14.RouteConfig(LocationAddressRoute.name, path: '/location-address'),
        _i14.RouteConfig(HomeRoute.name, path: '/Home', children: [
          _i14.RouteConfig(HomePages.name,
              path: 'home',
              parent: HomeRoute.name,
              children: [
                _i14.RouteConfig(ProfileRoute.name,
                    path: 'Profile', parent: HomePages.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SelectLanguage]
class SelectLanguageRoute extends _i14.PageRouteInfo<void> {
  const SelectLanguageRoute()
      : super(SelectLanguageRoute.name, path: '/select-language');

  static const String name = 'SelectLanguageRoute';
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/Login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.IntroScreen]
class IntroScreenRoute extends _i14.PageRouteInfo<void> {
  const IntroScreenRoute()
      : super(IntroScreenRoute.name, path: '/intro-screen');

  static const String name = 'IntroScreenRoute';
}

/// generated route for
/// [_i5.Register]
class RegisterRoute extends _i14.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/Register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i6.ActiveAccount]
class ActiveAccountRoute extends _i14.PageRouteInfo<void> {
  const ActiveAccountRoute()
      : super(ActiveAccountRoute.name, path: '/active-account');

  static const String name = 'ActiveAccountRoute';
}

/// generated route for
/// [_i7.VerifyCode]
class VerifyCodeRoute extends _i14.PageRouteInfo<void> {
  const VerifyCodeRoute() : super(VerifyCodeRoute.name, path: '/verify-code');

  static const String name = 'VerifyCodeRoute';
}

/// generated route for
/// [_i8.ResetPassword]
class ResetPasswordRoute extends _i14.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i9.ForgetPassword]
class ForgetPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(ForgetPasswordRoute.name, path: '/forget-password');

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i10.Terms]
class TermsRoute extends _i14.PageRouteInfo<void> {
  const TermsRoute() : super(TermsRoute.name, path: '/Terms');

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i11.RepeatedQuestions]
class RepeatedQuestionsRoute extends _i14.PageRouteInfo<void> {
  const RepeatedQuestionsRoute()
      : super(RepeatedQuestionsRoute.name, path: '/repeated-questions');

  static const String name = 'RepeatedQuestionsRoute';
}

/// generated route for
/// [_i12.LocationAddress]
class LocationAddressRoute extends _i14.PageRouteInfo<void> {
  const LocationAddressRoute()
      : super(LocationAddressRoute.name, path: '/location-address');

  static const String name = 'LocationAddressRoute';
}

/// generated route for
/// [_i13.Home]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/Home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class HomePages extends _i14.PageRouteInfo<void> {
  const HomePages({List<_i14.PageRouteInfo>? children})
      : super(HomePages.name, path: 'home', initialChildren: children);

  static const String name = 'HomePages';
}

/// generated route for
/// [_i15.Profile]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'Profile');

  static const String name = 'ProfileRoute';
}
