import 'package:auto_route/auto_route.dart';

import '../../pages/home/home_imports.dart';
import '../../pages/profile/profile_imports.dart';

const baseRoute = AutoRoute(
  path: 'home',
  name: 'homePages',
  page: EmptyRouterPage,
  children: [
    AutoRoute(page: Profile),
  ],
);
