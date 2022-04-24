import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/features/auth/domain/entities/login_params.dart';

import 'package:openidconnect/openidconnect.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import '../../widgets/build_auth_app_bar.dart';
import 'widgets/identity_view.dart';
import 'widgets/login_widgets_imports.dart';

part 'login.dart';
part 'login_data.dart';