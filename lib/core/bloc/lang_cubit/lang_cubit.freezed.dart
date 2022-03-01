// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lang_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LangStateTearOff {
  const _$LangStateTearOff();

  InitialState initial({required Locale locale}) {
    return InitialState(
      locale: locale,
    );
  }

  UpdateState update({required Locale locale}) {
    return UpdateState(
      locale: locale,
    );
  }
}

/// @nodoc
const $LangState = _$LangStateTearOff();

/// @nodoc
mixin _$LangState {
  Locale get locale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) initial,
    required TResult Function(Locale locale) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? initial,
    TResult Function(Locale locale)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? initial,
    TResult Function(Locale locale)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(UpdateState value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UpdateState value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UpdateState value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LangStateCopyWith<LangState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangStateCopyWith<$Res> {
  factory $LangStateCopyWith(LangState value, $Res Function(LangState) then) =
      _$LangStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LangStateCopyWithImpl<$Res> implements $LangStateCopyWith<$Res> {
  _$LangStateCopyWithImpl(this._value, this._then);

  final LangState _value;
  // ignore: unused_field
  final $Res Function(LangState) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class $InitialStateCopyWith<$Res> implements $LangStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class _$InitialStateCopyWithImpl<$Res> extends _$LangStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(
      InitialState _value, $Res Function(InitialState) _then)
      : super(_value, (v) => _then(v as InitialState));

  @override
  InitialState get _value => super._value as InitialState;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(InitialState(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$InitialState implements InitialState {
  _$InitialState({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LangState.initial(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialState &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $InitialStateCopyWith<InitialState> get copyWith =>
      _$InitialStateCopyWithImpl<InitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) initial,
    required TResult Function(Locale locale) update,
  }) {
    return initial(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? initial,
    TResult Function(Locale locale)? update,
  }) {
    return initial?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? initial,
    TResult Function(Locale locale)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(UpdateState value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UpdateState value)? update,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UpdateState value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements LangState {
  factory InitialState({required Locale locale}) = _$InitialState;

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  $InitialStateCopyWith<InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> implements $LangStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res> extends _$LangStateCopyWithImpl<$Res>
    implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(
      UpdateState _value, $Res Function(UpdateState) _then)
      : super(_value, (v) => _then(v as UpdateState));

  @override
  UpdateState get _value => super._value as UpdateState;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(UpdateState(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$UpdateState implements UpdateState {
  _$UpdateState({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LangState.update(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateState &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      _$UpdateStateCopyWithImpl<UpdateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) initial,
    required TResult Function(Locale locale) update,
  }) {
    return update(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? initial,
    TResult Function(Locale locale)? update,
  }) {
    return update?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? initial,
    TResult Function(Locale locale)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(UpdateState value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UpdateState value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UpdateState value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateState implements LangState {
  factory UpdateState({required Locale locale}) = _$UpdateState;

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
