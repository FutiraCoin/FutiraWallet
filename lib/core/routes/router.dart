part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //auth routes
    AdaptiveRoute(page: Splash, initial: true),
    AdaptiveRoute(page: Login),
  ],
)
class $AppRouter {}
