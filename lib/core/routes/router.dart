part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //auth routes
    AdaptiveRoute(page: Splash, initial: true),
    AdaptiveRoute(page: SelectLanguage),
    AdaptiveRoute(page: Login),
    AdaptiveRoute(page: IntroScreen),
    AdaptiveRoute(page: Register),
    AdaptiveRoute(page: ActiveAccount),
    AdaptiveRoute(page: VerifyCode),
    AdaptiveRoute(page: ResetPassword),
    AdaptiveRoute(page: ForgetPassword),
    AdaptiveRoute(page: Terms),
    AdaptiveRoute(page: RepeatedQuestions),
    AdaptiveRoute(page: LocationAddress),
    AutoRoute(page: Home,children: [baseRoute]),

  ],
)
class $AppRouter {}
