// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppModel _$AppModelFromJson(Map<String, dynamic> json) {
  return _AppModel.fromJson(json);
}

/// @nodoc
mixin _$AppModel {
  AppStatisticModel get statistic => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get deepLink => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get protocols => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res>;
  $Res call(
      {AppStatisticModel statistic,
      String name,
      String logo,
      String deepLink,
      String category,
      List<String> protocols});

  $AppStatisticModelCopyWith<$Res> get statistic;
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res> implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  final AppModel _value;
  // ignore: unused_field
  final $Res Function(AppModel) _then;

  @override
  $Res call({
    Object? statistic = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? deepLink = freezed,
    Object? category = freezed,
    Object? protocols = freezed,
  }) {
    return _then(_value.copyWith(
      statistic: statistic == freezed
          ? _value.statistic
          : statistic // ignore: cast_nullable_to_non_nullable
              as AppStatisticModel,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      deepLink: deepLink == freezed
          ? _value.deepLink
          : deepLink // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      protocols: protocols == freezed
          ? _value.protocols
          : protocols // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $AppStatisticModelCopyWith<$Res> get statistic {
    return $AppStatisticModelCopyWith<$Res>(_value.statistic, (value) {
      return _then(_value.copyWith(statistic: value));
    });
  }
}

/// @nodoc
abstract class _$$_AppModelCopyWith<$Res> implements $AppModelCopyWith<$Res> {
  factory _$$_AppModelCopyWith(
          _$_AppModel value, $Res Function(_$_AppModel) then) =
      __$$_AppModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {AppStatisticModel statistic,
      String name,
      String logo,
      String deepLink,
      String category,
      List<String> protocols});

  @override
  $AppStatisticModelCopyWith<$Res> get statistic;
}

/// @nodoc
class __$$_AppModelCopyWithImpl<$Res> extends _$AppModelCopyWithImpl<$Res>
    implements _$$_AppModelCopyWith<$Res> {
  __$$_AppModelCopyWithImpl(
      _$_AppModel _value, $Res Function(_$_AppModel) _then)
      : super(_value, (v) => _then(v as _$_AppModel));

  @override
  _$_AppModel get _value => super._value as _$_AppModel;

  @override
  $Res call({
    Object? statistic = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? deepLink = freezed,
    Object? category = freezed,
    Object? protocols = freezed,
  }) {
    return _then(_$_AppModel(
      statistic: statistic == freezed
          ? _value.statistic
          : statistic // ignore: cast_nullable_to_non_nullable
              as AppStatisticModel,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      deepLink: deepLink == freezed
          ? _value.deepLink
          : deepLink // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      protocols: protocols == freezed
          ? _value._protocols
          : protocols // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AppModel implements _AppModel {
  _$_AppModel(
      {required this.statistic,
      required this.name,
      required this.logo,
      required this.deepLink,
      required this.category,
      required final List<String> protocols})
      : _protocols = protocols;

  factory _$_AppModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppModelFromJson(json);

  @override
  final AppStatisticModel statistic;
  @override
  final String name;
  @override
  final String logo;
  @override
  final String deepLink;
  @override
  final String category;
  final List<String> _protocols;
  @override
  List<String> get protocols {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_protocols);
  }

  @override
  String toString() {
    return 'AppModel(statistic: $statistic, name: $name, logo: $logo, deepLink: $deepLink, category: $category, protocols: $protocols)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppModel &&
            const DeepCollectionEquality().equals(other.statistic, statistic) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.deepLink, deepLink) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other._protocols, _protocols));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statistic),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(deepLink),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(_protocols));

  @JsonKey(ignore: true)
  @override
  _$$_AppModelCopyWith<_$_AppModel> get copyWith =>
      __$$_AppModelCopyWithImpl<_$_AppModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppModelToJson(this);
  }
}

abstract class _AppModel implements AppModel {
  factory _AppModel(
      {required final AppStatisticModel statistic,
      required final String name,
      required final String logo,
      required final String deepLink,
      required final String category,
      required final List<String> protocols}) = _$_AppModel;

  factory _AppModel.fromJson(Map<String, dynamic> json) = _$_AppModel.fromJson;

  @override
  AppStatisticModel get statistic => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get logo => throw _privateConstructorUsedError;
  @override
  String get deepLink => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  List<String> get protocols => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppModelCopyWith<_$_AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}
