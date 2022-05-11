import 'package:flutter_tdd/features/base/data/models/app_statistic/app_statistic_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_model.freezed.dart';
part 'app_model.g.dart';

@freezed
class AppModel with _$AppModel{
  @JsonSerializable(explicitToJson: true)
  factory AppModel({
    required AppStatisticModel statistic,
    required String name,
    required String logo,
    required String deepLink,
    required String category,
    required List<String> protocols,

  }) = _AppModel;


  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
}