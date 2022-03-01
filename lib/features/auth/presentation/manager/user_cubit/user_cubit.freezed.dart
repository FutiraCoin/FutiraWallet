// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  InitailState initial() {
    return const InitailState();
  }

  UpdateState update({required UserModel model}) {
    return UpdateState(
      model: model,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserModel model) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserModel model)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserModel model)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailState value) initial,
    required TResult Function(UpdateState value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(UpdateState value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(UpdateState value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $InitailStateCopyWith<$Res> {
  factory $InitailStateCopyWith(
          InitailState value, $Res Function(InitailState) then) =
      _$InitailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitailStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $InitailStateCopyWith<$Res> {
  _$InitailStateCopyWithImpl(
      InitailState _value, $Res Function(InitailState) _then)
      : super(_value, (v) => _then(v as InitailState));

  @override
  InitailState get _value => super._value as InitailState;
}

/// @nodoc

class _$InitailState implements InitailState {
  const _$InitailState();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserModel model) update,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserModel model)? update,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserModel model)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailState value) initial,
    required TResult Function(UpdateState value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(UpdateState value)? update,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(UpdateState value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitailState implements UserState {
  const factory InitailState() = _$InitailState;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res>;
  $Res call({UserModel model});

  $UserModelCopyWith<$Res> get model;
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(
      UpdateState _value, $Res Function(UpdateState) _then)
      : super(_value, (v) => _then(v as UpdateState));

  @override
  UpdateState get _value => super._value as UpdateState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(UpdateState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get model {
    return $UserModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateState implements UpdateState {
  const _$UpdateState({required this.model});

  @override
  final UserModel model;

  @override
  String toString() {
    return 'UserState.update(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      _$UpdateStateCopyWithImpl<UpdateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserModel model) update,
  }) {
    return update(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserModel model)? update,
  }) {
    return update?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserModel model)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailState value) initial,
    required TResult Function(UpdateState value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(UpdateState value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(UpdateState value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateState implements UserState {
  const factory UpdateState({required UserModel model}) = _$UpdateState;

  UserModel get model;
  @JsonKey(ignore: true)
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
