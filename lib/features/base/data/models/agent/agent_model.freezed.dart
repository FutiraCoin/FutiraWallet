// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentModel _$AgentModelFromJson(Map<String, dynamic> json) {
  return _AgentModel.fromJson(json);
}

/// @nodoc
mixin _$AgentModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentModelCopyWith<AgentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentModelCopyWith<$Res> {
  factory $AgentModelCopyWith(
          AgentModel value, $Res Function(AgentModel) then) =
      _$AgentModelCopyWithImpl<$Res>;
  $Res call({String id, String name, String image});
}

/// @nodoc
class _$AgentModelCopyWithImpl<$Res> implements $AgentModelCopyWith<$Res> {
  _$AgentModelCopyWithImpl(this._value, this._then);

  final AgentModel _value;
  // ignore: unused_field
  final $Res Function(AgentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AgentModelCopyWith<$Res>
    implements $AgentModelCopyWith<$Res> {
  factory _$$_AgentModelCopyWith(
          _$_AgentModel value, $Res Function(_$_AgentModel) then) =
      __$$_AgentModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String image});
}

/// @nodoc
class __$$_AgentModelCopyWithImpl<$Res> extends _$AgentModelCopyWithImpl<$Res>
    implements _$$_AgentModelCopyWith<$Res> {
  __$$_AgentModelCopyWithImpl(
      _$_AgentModel _value, $Res Function(_$_AgentModel) _then)
      : super(_value, (v) => _then(v as _$_AgentModel));

  @override
  _$_AgentModel get _value => super._value as _$_AgentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_AgentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AgentModel implements _AgentModel {
  _$_AgentModel({required this.id, required this.name, required this.image});

  factory _$_AgentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AgentModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'AgentModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_AgentModelCopyWith<_$_AgentModel> get copyWith =>
      __$$_AgentModelCopyWithImpl<_$_AgentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentModelToJson(this);
  }
}

abstract class _AgentModel implements AgentModel {
  factory _AgentModel(
      {required final String id,
      required final String name,
      required final String image}) = _$_AgentModel;

  factory _AgentModel.fromJson(Map<String, dynamic> json) =
      _$_AgentModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AgentModelCopyWith<_$_AgentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
