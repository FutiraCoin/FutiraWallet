import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart';

import '../../../../general/presentation/pages/terms/terms_imports.dart';
import '../../pages/about_futira/about_futira_imports.dart';
import '../../pages/create_wallet/create_wallet_imports.dart';
import '../../pages/currency/currency_imports.dart';
import '../../pages/language/language_imports.dart';
import '../../pages/my_wallets/my_wallets_imports.dart';
import '../../pages/privacy_policy/privacy_policy_imports.dart';
import '../../pages/profile/profile_imports.dart';
import '../../pages/send_coins/send_coins_imports.dart';
import '../../pages/support/support_imports.dart';
import '../../pages/swap/swap_imports.dart';
import '../../pages/watch_wallet/watch_wallet_imports.dart';

const List<AutoRoute> baseRoute = [
  AutoRoute(page: Home),
  AutoRoute(page: Profile),
  AutoRoute(page: MyWallets),
  AutoRoute(page: CreateWallet),
  AutoRoute(page: WatchWallet),
  AutoRoute(page: SendCoins),
  AutoRoute(page: Currency),
  AutoRoute(page: Language),
  AutoRoute(page: Swap),
  AutoRoute(page: AboutFutira),
  AutoRoute(page: Support),
  AutoRoute(page: PrivacyPolicy),
  AutoRoute(page: Terms),
];
