// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppModel _$$_AppModelFromJson(Map<String, dynamic> json) => _$_AppModel(
      statistic:
          AppStatisticModel.fromJson(json['statistic'] as Map<String, dynamic>),
      name: json['name'] as String,
      logo: json['logo'] as String,
      deepLink: json['deepLink'] as String,
      category: json['category'] as String,
      protocols:
          (json['protocols'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AppModelToJson(_$_AppModel instance) =>
    <String, dynamic>{
      'statistic': instance.statistic.toJson(),
      'name': instance.name,
      'logo': instance.logo,
      'deepLink': instance.deepLink,
      'category': instance.category,
      'protocols': instance.protocols,
    };
