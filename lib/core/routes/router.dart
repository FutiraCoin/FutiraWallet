part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //auth routes
    AdaptiveRoute(page: Splash, initial: true),
    AdaptiveRoute(page: Login),
    AdaptiveRoute(page: IntroScreen),
    AdaptiveRoute(page: Register),
    AdaptiveRoute(page: ActiveAccount),
  ],
)
class $AppRouter {}
