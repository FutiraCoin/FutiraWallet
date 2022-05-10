// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinModel _$CoinModelFromJson(Map<String, dynamic> json) {
  return _CoinModel.fromJson(json);
}

/// @nodoc
mixin _$CoinModel {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "price_change_24h")
  num get price => throw _privateConstructorUsedError;
  @JsonKey(name: "price_change_percentage_24h")
  num get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinModelCopyWith<CoinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinModelCopyWith<$Res> {
  factory $CoinModelCopyWith(CoinModel value, $Res Function(CoinModel) then) =
      _$CoinModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: "price_change_24h") num price,
      @JsonKey(name: "price_change_percentage_24h") num percentage});
}

/// @nodoc
class _$CoinModelCopyWithImpl<$Res> implements $CoinModelCopyWith<$Res> {
  _$CoinModelCopyWithImpl(this._value, this._then);

  final CoinModel _value;
  // ignore: unused_field
  final $Res Function(CoinModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_CoinModelCopyWith<$Res> implements $CoinModelCopyWith<$Res> {
  factory _$$_CoinModelCopyWith(
          _$_CoinModel value, $Res Function(_$_CoinModel) then) =
      __$$_CoinModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: "price_change_24h") num price,
      @JsonKey(name: "price_change_percentage_24h") num percentage});
}

/// @nodoc
class __$$_CoinModelCopyWithImpl<$Res> extends _$CoinModelCopyWithImpl<$Res>
    implements _$$_CoinModelCopyWith<$Res> {
  __$$_CoinModelCopyWithImpl(
      _$_CoinModel _value, $Res Function(_$_CoinModel) _then)
      : super(_value, (v) => _then(v as _$_CoinModel));

  @override
  _$_CoinModel get _value => super._value as _$_CoinModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$_CoinModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CoinModel implements _CoinModel {
  _$_CoinModel(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      @JsonKey(name: "price_change_24h") required this.price,
      @JsonKey(name: "price_change_percentage_24h") required this.percentage});

  factory _$_CoinModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoinModelFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey(name: "price_change_24h")
  final num price;
  @override
  @JsonKey(name: "price_change_percentage_24h")
  final num percentage;

  @override
  String toString() {
    return 'CoinModel(id: $id, symbol: $symbol, name: $name, image: $image, price: $price, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(percentage));

  @JsonKey(ignore: true)
  @override
  _$$_CoinModelCopyWith<_$_CoinModel> get copyWith =>
      __$$_CoinModelCopyWithImpl<_$_CoinModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinModelToJson(this);
  }
}

abstract class _CoinModel implements CoinModel {
  factory _CoinModel(
      {required final String id,
      required final String symbol,
      required final String name,
      required final String image,
      @JsonKey(name: "price_change_24h")
          required final num price,
      @JsonKey(name: "price_change_percentage_24h")
          required final num percentage}) = _$_CoinModel;

  factory _CoinModel.fromJson(Map<String, dynamic> json) =
      _$_CoinModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "price_change_24h")
  num get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "price_change_percentage_24h")
  num get percentage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CoinModelCopyWith<_$_CoinModel> get copyWith =>
      throw _privateConstructorUsedError;
}
