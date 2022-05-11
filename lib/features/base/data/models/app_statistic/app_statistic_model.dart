import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_statistic_model.freezed.dart';
part 'app_statistic_model.g.dart';

@freezed
class AppStatisticModel with _$AppStatisticModel{
  @JsonSerializable(explicitToJson: true)
  factory AppStatisticModel({
    required num balance,
    required String currencyName,
    required num transactionCount,
    required num userActivity,
  }) = _AppStatisticModel;


  factory AppStatisticModel.fromJson(Map<String, dynamic> json) =>
      _$AppStatisticModelFromJson(json);
}