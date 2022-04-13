import 'package:flutter_tdd/features/base/data/models/category/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../products/product_model.dart';

part 'cat_products_model.freezed.dart';
part 'cat_products_model.g.dart';

@freezed
class CatProductsModel with _$CatProductsModel{
  @JsonSerializable(explicitToJson: true)
  factory CatProductsModel({
    required int id,
    required String nameArabic,
    required String nameEnglish,
    required String image,
    @JsonKey(name: "items") required List<ProductModel> products,
  }) = _CatProductsModel;


  factory CatProductsModel.fromJson(Map<String, dynamic> json) =>
      _$CatProductsModelFromJson(json);
}