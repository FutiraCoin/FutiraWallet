

import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/intro_screens/intro_screens_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login_type/login_type_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/restore_backup/restore_backup_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/select_language/select_language_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/verify_code/verify_code_imports.dart';

import '../../pages/confirm_recovery/confirm_recovery_imports.dart';
import '../../pages/geometric_screen/geometric_screen_imports.dart';
import '../../pages/recovery_phrase/recovery_phrase_imports.dart';
import '../../pages/secure_wallet/secure_wallet_imports.dart';

const List<AutoRoute> authRoutes = [
  AdaptiveRoute(page: Splash, initial: true),
  AdaptiveRoute(page: SelectLanguage),
  AdaptiveRoute(page: Login),
  AdaptiveRoute(page: IntroScreens),
  AdaptiveRoute(page: LoginType),
  AdaptiveRoute(page: RestoreBackup),
  AdaptiveRoute(page: Register),
  AdaptiveRoute(page: ActiveAccount),
  AdaptiveRoute(page: VerifyCode),
  AdaptiveRoute(page: ResetPassword),
  AdaptiveRoute(page: ForgetPassword),
  AdaptiveRoute(page: GeometricScreen),
  AdaptiveRoute(page: SecureWallet),
  AdaptiveRoute(page: RecoveryPhrase),
  AdaptiveRoute(page: ConfirmRecovery),
];