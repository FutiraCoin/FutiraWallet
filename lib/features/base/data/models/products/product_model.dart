import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel{
  @JsonSerializable(explicitToJson: true)
  factory ProductModel({
    required String id,
    required String title,
    required String image,
  }) = _ProductModel;


  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}