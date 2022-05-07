// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatProductsModel _$CatProductsModelFromJson(Map<String, dynamic> json) {
  return _CatProductsModel.fromJson(json);
}

/// @nodoc
mixin _$CatProductsModel {
  int get id => throw _privateConstructorUsedError;
  String get nameArabic => throw _privateConstructorUsedError;
  String get nameEnglish => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<ProductModel> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatProductsModelCopyWith<CatProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatProductsModelCopyWith<$Res> {
  factory $CatProductsModelCopyWith(
          CatProductsModel value, $Res Function(CatProductsModel) then) =
      _$CatProductsModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String nameArabic,
      String nameEnglish,
      String image,
      @JsonKey(name: "items") List<ProductModel> products});
}

/// @nodoc
class _$CatProductsModelCopyWithImpl<$Res>
    implements $CatProductsModelCopyWith<$Res> {
  _$CatProductsModelCopyWithImpl(this._value, this._then);

  final CatProductsModel _value;
  // ignore: unused_field
  final $Res Function(CatProductsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nameArabic = freezed,
    Object? nameEnglish = freezed,
    Object? image = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameArabic: nameArabic == freezed
          ? _value.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String,
      nameEnglish: nameEnglish == freezed
          ? _value.nameEnglish
          : nameEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_CatProductsModelCopyWith<$Res>
    implements $CatProductsModelCopyWith<$Res> {
  factory _$$_CatProductsModelCopyWith(
          _$_CatProductsModel value, $Res Function(_$_CatProductsModel) then) =
      __$$_CatProductsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String nameArabic,
      String nameEnglish,
      String image,
      @JsonKey(name: "items") List<ProductModel> products});
}

/// @nodoc
class __$$_CatProductsModelCopyWithImpl<$Res>
    extends _$CatProductsModelCopyWithImpl<$Res>
    implements _$$_CatProductsModelCopyWith<$Res> {
  __$$_CatProductsModelCopyWithImpl(
      _$_CatProductsModel _value, $Res Function(_$_CatProductsModel) _then)
      : super(_value, (v) => _then(v as _$_CatProductsModel));

  @override
  _$_CatProductsModel get _value => super._value as _$_CatProductsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nameArabic = freezed,
    Object? nameEnglish = freezed,
    Object? image = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_CatProductsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameArabic: nameArabic == freezed
          ? _value.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String,
      nameEnglish: nameEnglish == freezed
          ? _value.nameEnglish
          : nameEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CatProductsModel implements _CatProductsModel {
  _$_CatProductsModel(
      {required this.id,
      required this.nameArabic,
      required this.nameEnglish,
      required this.image,
      @JsonKey(name: "items") required final List<ProductModel> products})
      : _products = products;

  factory _$_CatProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CatProductsModelFromJson(json);

  @override
  final int id;
  @override
  final String nameArabic;
  @override
  final String nameEnglish;
  @override
  final String image;
  final List<ProductModel> _products;
  @override
  @JsonKey(name: "items")
  List<ProductModel> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CatProductsModel(id: $id, nameArabic: $nameArabic, nameEnglish: $nameEnglish, image: $image, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatProductsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.nameArabic, nameArabic) &&
            const DeepCollectionEquality()
                .equals(other.nameEnglish, nameEnglish) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nameArabic),
      const DeepCollectionEquality().hash(nameEnglish),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_CatProductsModelCopyWith<_$_CatProductsModel> get copyWith =>
      __$$_CatProductsModelCopyWithImpl<_$_CatProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatProductsModelToJson(this);
  }
}

abstract class _CatProductsModel implements CatProductsModel {
  factory _CatProductsModel(
          {required final int id,
          required final String nameArabic,
          required final String nameEnglish,
          required final String image,
          @JsonKey(name: "items") required final List<ProductModel> products}) =
      _$_CatProductsModel;

  factory _CatProductsModel.fromJson(Map<String, dynamic> json) =
      _$_CatProductsModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get nameArabic => throw _privateConstructorUsedError;
  @override
  String get nameEnglish => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "items")
  List<ProductModel> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatProductsModelCopyWith<_$_CatProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
