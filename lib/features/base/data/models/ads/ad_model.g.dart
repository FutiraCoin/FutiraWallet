// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdModel _$$_AdModelFromJson(Map<String, dynamic> json) => _$_AdModel(
      id: json['id'] as String,
      titleEnglish: json['titleEnglish'] as String,
      titleArabic: json['titleArabic'] as String,
      image: json['image'] as String,
      url: json['url'] as String,
      fromDate: DateTime.parse(json['fromDate'] as String),
      toDate: DateTime.parse(json['toDate'] as String),
      sortOrder: json['sortOrder'] as int,
      isActive: json['isActive'] as bool,
      notes: json['notes'] as String,
      createdBy: json['createdBy'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_AdModelToJson(_$_AdModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'titleEnglish': instance.titleEnglish,
      'titleArabic': instance.titleArabic,
      'image': instance.image,
      'url': instance.url,
      'fromDate': instance.fromDate.toIso8601String(),
      'toDate': instance.toDate.toIso8601String(),
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
      'notes': instance.notes,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate.toIso8601String(),
    };
