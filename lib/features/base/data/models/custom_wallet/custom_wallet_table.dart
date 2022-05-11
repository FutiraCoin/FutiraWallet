import 'package:drift/drift.dart';

class CustomWalletTable extends Table {
  IntColumn get id => integer().nullable().autoIncrement()();
  TextColumn get name => text().named("name")();
  TextColumn get symbol => text().named("symbol")();
  TextColumn get contract => text().named("contract")();
  TextColumn get imageLink => text().named("image_link")();
}
