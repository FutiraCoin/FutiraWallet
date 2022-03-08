import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/general/domain/entities/location_entity.dart';
import 'package:flutter_tdd/res.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';
import '../LocationAddressImports.dart';
import '../location_cubit/location_cubit.dart';

part 'BuildGoogleMapView.dart';

part 'BuildSaveButton.dart';
