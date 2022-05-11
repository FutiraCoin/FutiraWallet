// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_statistic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppStatisticModel _$AppStatisticModelFromJson(Map<String, dynamic> json) {
  return _AppStatisticModel.fromJson(json);
}

/// @nodoc
mixin _$AppStatisticModel {
  num get balance => throw _privateConstructorUsedError;
  String get currencyName => throw _privateConstructorUsedError;
  num get transactionCount => throw _privateConstructorUsedError;
  num get userActivity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStatisticModelCopyWith<AppStatisticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStatisticModelCopyWith<$Res> {
  factory $AppStatisticModelCopyWith(
          AppStatisticModel value, $Res Function(AppStatisticModel) then) =
      _$AppStatisticModelCopyWithImpl<$Res>;
  $Res call(
      {num balance,
      String currencyName,
      num transactionCount,
      num userActivity});
}

/// @nodoc
class _$AppStatisticModelCopyWithImpl<$Res>
    implements $AppStatisticModelCopyWith<$Res> {
  _$AppStatisticModelCopyWithImpl(this._value, this._then);

  final AppStatisticModel _value;
  // ignore: unused_field
  final $Res Function(AppStatisticModel) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? currencyName = freezed,
    Object? transactionCount = freezed,
    Object? userActivity = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      transactionCount: transactionCount == freezed
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as num,
      userActivity: userActivity == freezed
          ? _value.userActivity
          : userActivity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_AppStatisticModelCopyWith<$Res>
    implements $AppStatisticModelCopyWith<$Res> {
  factory _$$_AppStatisticModelCopyWith(_$_AppStatisticModel value,
          $Res Function(_$_AppStatisticModel) then) =
      __$$_AppStatisticModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {num balance,
      String currencyName,
      num transactionCount,
      num userActivity});
}

/// @nodoc
class __$$_AppStatisticModelCopyWithImpl<$Res>
    extends _$AppStatisticModelCopyWithImpl<$Res>
    implements _$$_AppStatisticModelCopyWith<$Res> {
  __$$_AppStatisticModelCopyWithImpl(
      _$_AppStatisticModel _value, $Res Function(_$_AppStatisticModel) _then)
      : super(_value, (v) => _then(v as _$_AppStatisticModel));

  @override
  _$_AppStatisticModel get _value => super._value as _$_AppStatisticModel;

  @override
  $Res call({
    Object? balance = freezed,
    Object? currencyName = freezed,
    Object? transactionCount = freezed,
    Object? userActivity = freezed,
  }) {
    return _then(_$_AppStatisticModel(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      transactionCount: transactionCount == freezed
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as num,
      userActivity: userActivity == freezed
          ? _value.userActivity
          : userActivity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AppStatisticModel implements _AppStatisticModel {
  _$_AppStatisticModel(
      {required this.balance,
      required this.currencyName,
      required this.transactionCount,
      required this.userActivity});

  factory _$_AppStatisticModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppStatisticModelFromJson(json);

  @override
  final num balance;
  @override
  final String currencyName;
  @override
  final num transactionCount;
  @override
  final num userActivity;

  @override
  String toString() {
    return 'AppStatisticModel(balance: $balance, currencyName: $currencyName, transactionCount: $transactionCount, userActivity: $userActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppStatisticModel &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.currencyName, currencyName) &&
            const DeepCollectionEquality()
                .equals(other.transactionCount, transactionCount) &&
            const DeepCollectionEquality()
                .equals(other.userActivity, userActivity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(currencyName),
      const DeepCollectionEquality().hash(transactionCount),
      const DeepCollectionEquality().hash(userActivity));

  @JsonKey(ignore: true)
  @override
  _$$_AppStatisticModelCopyWith<_$_AppStatisticModel> get copyWith =>
      __$$_AppStatisticModelCopyWithImpl<_$_AppStatisticModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStatisticModelToJson(this);
  }
}

abstract class _AppStatisticModel implements AppStatisticModel {
  factory _AppStatisticModel(
      {required final num balance,
      required final String currencyName,
      required final num transactionCount,
      required final num userActivity}) = _$_AppStatisticModel;

  factory _AppStatisticModel.fromJson(Map<String, dynamic> json) =
      _$_AppStatisticModel.fromJson;

  @override
  num get balance => throw _privateConstructorUsedError;
  @override
  String get currencyName => throw _privateConstructorUsedError;
  @override
  num get transactionCount => throw _privateConstructorUsedError;
  @override
  num get userActivity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppStatisticModelCopyWith<_$_AppStatisticModel> get copyWith =>
      throw _privateConstructorUsedError;
}
