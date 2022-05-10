import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_model.freezed.dart';
part 'coin_model.g.dart';

@freezed
class CoinModel with _$CoinModel{
  @JsonSerializable(explicitToJson: true)
  factory CoinModel({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: "price_change_24h") required num price,
    @JsonKey(name: "price_change_percentage_24h") required num percentage,

  }) = _CoinModel;


  factory CoinModel.fromJson(Map<String, dynamic> json) =>
      _$CoinModelFromJson(json);
}