import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/bloc/lang_cubit/lang_cubit.dart';
import 'core/helpers/app_them.dart';
import 'core/helpers/firebase_analytics_helper.dart';
import 'core/helpers/general_providers.dart';
import 'core/localization/set_localization.dart';
import 'core/routes/router_imports.gr.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter(getIt<GlobalContext>().navigationKey);

  @override
  void initState() {
    getIt.registerSingleton(SharedPreferences.getInstance());
    getIt<FirebaseAnalyticsHelper>().analytics.setConsent(
        adStorageConsentGranted: false, analyticsStorageConsentGranted: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: GeneralProviders.instance.providers(context),
      child: BlocBuilder<LangCubit, LangState>(
        builder: (context, state) {
          return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: AppThem.instance.themeData,
              title: "Base TDD",
              supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
              localizationsDelegates: const [
                SetLocalization.localizationsDelegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: state.locale,
              routerDelegate: _appRouter.delegate(
                  initialRoutes: [const SplashRoute()],
                  navigatorObservers: () {
                    return [
                      FirebaseAnalyticsObserver(
                          analytics: getIt<FirebaseAnalyticsHelper>().analytics)
                    ];
                  }),
              routeInformationParser: _appRouter.defaultRouteParser(),
              builder: (ctx, child) {
                child = FlutterEasyLoading(child: child); //do something
                return child;
              });
        },
      ),
    );
  }
}
