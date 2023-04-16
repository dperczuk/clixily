import 'package:clixily/core/data/database/clixily_database.dart';

abstract class QuotesDatabase {
  Future<int> insertQuote(QuoteTableCompanion companion);

  Future<List<Quote>> getQuotesEntries();

  Future<void> removeAllQuotes();
}
