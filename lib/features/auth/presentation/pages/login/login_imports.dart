import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/features/auth/domain/entities/login_params.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:openid_client/openid_client.dart' as openid;
import 'package:openid_client/openid_client_io.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/build_auth_app_bar.dart';
import 'widgets/login_widgets_imports.dart';

part 'login.dart';
part 'login_data.dart';