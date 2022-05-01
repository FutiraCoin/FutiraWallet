part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[

    ...authRoutes,
    AdaptiveRoute(page: Terms),
    AdaptiveRoute(page: RepeatedQuestions),
    ...baseRoute,

  ],
)
class $AppRouter {}
