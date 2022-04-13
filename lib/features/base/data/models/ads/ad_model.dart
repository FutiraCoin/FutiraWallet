import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_model.freezed.dart';
part 'ad_model.g.dart';

@freezed
class AdModel with _$AdModel{
  @JsonSerializable(explicitToJson: true)
  factory AdModel({
    required String id,
    required String titleEnglish,
    required String titleArabic,
    required String image,
    required String url,
    required DateTime fromDate,
    required DateTime toDate,
    required int sortOrder,
    required bool isActive,
    required String notes,
    required String createdBy,
    required DateTime createdDate,
  }) = _AdModel;


  factory AdModel.fromJson(Map<String, dynamic> json) =>
      _$AdModelFromJson(json);
}