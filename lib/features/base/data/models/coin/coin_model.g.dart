// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinModel _$$_CoinModelFromJson(Map<String, dynamic> json) => _$_CoinModel(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      price: json['price_change_24h'] as num,
      percentage: json['price_change_percentage_24h'] as num,
    );

Map<String, dynamic> _$$_CoinModelToJson(_$_CoinModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'price_change_24h': instance.price,
      'price_change_percentage_24h': instance.percentage,
    };
