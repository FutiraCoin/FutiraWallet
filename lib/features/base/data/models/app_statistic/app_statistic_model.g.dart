// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_statistic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppStatisticModel _$$_AppStatisticModelFromJson(Map<String, dynamic> json) =>
    _$_AppStatisticModel(
      balance: json['balance'] as num,
      currencyName: json['currencyName'] as String,
      transactionCount: json['transactionCount'] as num,
      userActivity: json['userActivity'] as num,
    );

Map<String, dynamic> _$$_AppStatisticModelToJson(
        _$_AppStatisticModel instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'currencyName': instance.currencyName,
      'transactionCount': instance.transactionCount,
      'userActivity': instance.userActivity,
    };
