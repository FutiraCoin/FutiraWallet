import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/base/domain/use_cases/get_custom_wallets.dart';
import 'package:flutter_tdd/features/base/presentation/pages/show_custom_wallet/widgets/show_custom_wallet_widgets_imports.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';
import 'package:tf_custom_widgets/utils/generic_cubit/generic_cubit.dart';

import '../../../../../core/helpers/di.dart';
import '../../../data/data_sources/db/custom_wallet_db.dart';
import '../../../data/models/custom_wallet/custom_wallet_model.dart';

part 'show_custom_wallet.dart';
part 'show_custom_wallet_data.dart';
