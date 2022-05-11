// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_wallet_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class CustomWalletTableData extends DataClass
    implements Insertable<CustomWalletTableData> {
  final int? id;
  final String name;
  final String symbol;
  final String contract;
  final String imageLink;
  CustomWalletTableData(
      {this.id,
      required this.name,
      required this.symbol,
      required this.contract,
      required this.imageLink});
  factory CustomWalletTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CustomWalletTableData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      contract: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}contract'])!,
      imageLink: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_link'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['name'] = Variable<String>(name);
    map['symbol'] = Variable<String>(symbol);
    map['contract'] = Variable<String>(contract);
    map['image_link'] = Variable<String>(imageLink);
    return map;
  }

  CustomWalletTableCompanion toCompanion(bool nullToAbsent) {
    return CustomWalletTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
      symbol: Value(symbol),
      contract: Value(contract),
      imageLink: Value(imageLink),
    );
  }

  factory CustomWalletTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomWalletTableData(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      symbol: serializer.fromJson<String>(json['symbol']),
      contract: serializer.fromJson<String>(json['contract']),
      imageLink: serializer.fromJson<String>(json['imageLink']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
      'symbol': serializer.toJson<String>(symbol),
      'contract': serializer.toJson<String>(contract),
      'imageLink': serializer.toJson<String>(imageLink),
    };
  }

  CustomWalletTableData copyWith(
          {int? id,
          String? name,
          String? symbol,
          String? contract,
          String? imageLink}) =>
      CustomWalletTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
        contract: contract ?? this.contract,
        imageLink: imageLink ?? this.imageLink,
      );
  @override
  String toString() {
    return (StringBuffer('CustomWalletTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('contract: $contract, ')
          ..write('imageLink: $imageLink')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, symbol, contract, imageLink);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomWalletTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.symbol == this.symbol &&
          other.contract == this.contract &&
          other.imageLink == this.imageLink);
}

class CustomWalletTableCompanion
    extends UpdateCompanion<CustomWalletTableData> {
  final Value<int?> id;
  final Value<String> name;
  final Value<String> symbol;
  final Value<String> contract;
  final Value<String> imageLink;
  const CustomWalletTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.symbol = const Value.absent(),
    this.contract = const Value.absent(),
    this.imageLink = const Value.absent(),
  });
  CustomWalletTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String symbol,
    required String contract,
    required String imageLink,
  })  : name = Value(name),
        symbol = Value(symbol),
        contract = Value(contract),
        imageLink = Value(imageLink);
  static Insertable<CustomWalletTableData> custom({
    Expression<int?>? id,
    Expression<String>? name,
    Expression<String>? symbol,
    Expression<String>? contract,
    Expression<String>? imageLink,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (symbol != null) 'symbol': symbol,
      if (contract != null) 'contract': contract,
      if (imageLink != null) 'image_link': imageLink,
    });
  }

  CustomWalletTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? name,
      Value<String>? symbol,
      Value<String>? contract,
      Value<String>? imageLink}) {
    return CustomWalletTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      contract: contract ?? this.contract,
      imageLink: imageLink ?? this.imageLink,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (contract.present) {
      map['contract'] = Variable<String>(contract.value);
    }
    if (imageLink.present) {
      map['image_link'] = Variable<String>(imageLink.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomWalletTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('contract: $contract, ')
          ..write('imageLink: $imageLink')
          ..write(')'))
        .toString();
  }
}

class $CustomWalletTableTable extends CustomWalletTable
    with TableInfo<$CustomWalletTableTable, CustomWalletTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomWalletTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'symbol', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _contractMeta = const VerificationMeta('contract');
  @override
  late final GeneratedColumn<String?> contract = GeneratedColumn<String?>(
      'contract', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageLinkMeta = const VerificationMeta('imageLink');
  @override
  late final GeneratedColumn<String?> imageLink = GeneratedColumn<String?>(
      'image_link', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, symbol, contract, imageLink];
  @override
  String get aliasedName => _alias ?? 'custom_wallet_table';
  @override
  String get actualTableName => 'custom_wallet_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomWalletTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('contract')) {
      context.handle(_contractMeta,
          contract.isAcceptableOrUnknown(data['contract']!, _contractMeta));
    } else if (isInserting) {
      context.missing(_contractMeta);
    }
    if (data.containsKey('image_link')) {
      context.handle(_imageLinkMeta,
          imageLink.isAcceptableOrUnknown(data['image_link']!, _imageLinkMeta));
    } else if (isInserting) {
      context.missing(_imageLinkMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomWalletTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CustomWalletTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CustomWalletTableTable createAlias(String alias) {
    return $CustomWalletTableTable(attachedDatabase, alias);
  }
}

abstract class _$CustomWalletDb extends GeneratedDatabase {
  _$CustomWalletDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CustomWalletTableTable customWalletTable =
      $CustomWalletTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [customWalletTable];
}
