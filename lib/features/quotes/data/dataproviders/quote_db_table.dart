import 'package:drift/drift.dart';

@DataClassName('Quote')
class QuoteTable extends Table {
  TextColumn get id => text().nullable()();

  TextColumn get content => text().nullable()();

  TextColumn get author => text().nullable()();

  IntColumn get length => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
