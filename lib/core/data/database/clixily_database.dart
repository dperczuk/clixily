import 'dart:io';

import 'package:clixily/features/quotes/data/dataproviders/quote_db.dart';
import 'package:clixily/features/quotes/data/dataproviders/quote_db_table.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

part 'clixily_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [QuoteTable])
class ClixilyDatabase extends _$ClixilyDatabase implements QuotesDatabase {
  @visibleForTesting
  ClixilyDatabase(QueryExecutor executor) : super(executor);

  factory ClixilyDatabase.initialize() => ClixilyDatabase(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator migration) => migration.createAll(),
        onUpgrade: (Migrator migration, int from, int to) async {},
      );

  /// Quotes Table
  @override
  Future<List<Quote>> getQuotesEntries() => select(quoteTable).get();

  @override
  Future<int> insertQuote(QuoteTableCompanion companion) {
    return into(quoteTable).insertOnConflictUpdate(
      _mapQuoteToInsertCompanion(companion),
    );
  }

  @override
  Future<void> removeAllQuotes() => delete(quoteTable).go();

  QuoteTableCompanion _mapQuoteToInsertCompanion(QuoteTableCompanion quote) {
    return QuoteTableCompanion.insert(
      id: const Uuid().v4(),
      content: quote.content,
      author: quote.author,
      length: quote.length,
    );
  }
}
