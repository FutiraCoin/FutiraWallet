import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart';

import '../../pages/profile/profile_imports.dart';

const List<AutoRoute> baseRoute = [
  AutoRoute(page: Home),
  AutoRoute(page: Profile),
];
