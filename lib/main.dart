import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'core/bloc/lang_cubit/lang_cubit.dart';
import 'core/helpers/di.dart';
import 'my_app.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureDependencies();
  runApp(
    BlocProvider(
      create: (BuildContext context) => LangCubit(),
      child:  Phoenix(child: const MyApp()),
    ),
  );
}

