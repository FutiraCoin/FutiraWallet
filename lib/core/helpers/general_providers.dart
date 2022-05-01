import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/lang_cubit/lang_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/bloc/auth_cubit/auth_cubit.dart';

import '../../features/auth/presentation/manager/bloc/user_cubit/user_cubit.dart';

class GeneralProviders{

  GeneralProviders._();

  static GeneralProviders instance = GeneralProviders._();

  List<BlocProvider> providers(BuildContext context)=>[
    BlocProvider<AuthCubit>(
      create: (BuildContext context)=> AuthCubit(),
    ),
    BlocProvider<LangCubit>(
      create: (BuildContext context)=> LangCubit(),
    ),
    BlocProvider<UserCubit>(
      create: (BuildContext context)=> UserCubit(),
    )
  ];

}