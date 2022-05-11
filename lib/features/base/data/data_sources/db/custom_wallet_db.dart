import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_tdd/features/base/data/models/custom_wallet/custom_wallet_table.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'custom_wallet_db.g.dart';

@lazySingleton
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, "custom_wallet.sqlite"));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [CustomWalletTable])
class CustomWalletDb extends _$CustomWalletDb {
  CustomWalletDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<CustomWalletTableData>> getCustomWallets() async {
    return await select(customWalletTable).get();
  }

  Future<int> insertCustomWallet(CustomWalletTableCompanion entity) async {
    return await into(customWalletTable).insert(entity);
  }

  Future<int> deleteCustomWallet(int id) async {
    return await (delete(customWalletTable)..where((tbl) => tbl.id.equals(id)))
        .go();
  }
}
