// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatProductsModel _$$_CatProductsModelFromJson(Map<String, dynamic> json) =>
    _$_CatProductsModel(
      id: json['id'] as int,
      nameArabic: json['nameArabic'] as String,
      nameEnglish: json['nameEnglish'] as String,
      image: json['image'] as String,
      products: (json['items'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CatProductsModelToJson(_$_CatProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameArabic': instance.nameArabic,
      'nameEnglish': instance.nameEnglish,
      'image': instance.image,
      'items': instance.products.map((e) => e.toJson()).toList(),
    };
