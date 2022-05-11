//@dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/features/base/data/data_sources/db/custom_wallet_db.dart';

import 'core/bloc/lang_cubit/lang_cubit.dart';
import 'core/helpers/di.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  await configureDependencies();
  getIt.registerSingleton(CustomWalletDb());

  await createProviders();
  runApp(
    BlocProvider(
      create: (BuildContext context) => LangCubit(),
      child: Phoenix(child: const MyApp()),
    ),
  );
}
