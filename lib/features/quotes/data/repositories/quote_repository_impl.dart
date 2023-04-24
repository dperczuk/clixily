import 'package:clixily/core/data/api/api_client.dart';
import 'package:clixily/core/data/database/clixily_database.dart';
import 'package:clixily/core/error/failures.dart';
import 'package:clixily/features/quotes/data/dataproviders/quote_db.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';

class QuoteRepositoryImpl extends QuoteRepository {
  QuoteRepositoryImpl(this._apiClient, this._quotesDatabase);

  final ApiClient _apiClient;
  final QuotesDatabase _quotesDatabase;

  @override
  Future<Either<Failure, QuoteModel>> getQuote() async {
    try {
      final responseBody = await _apiClient.get('random');

      return Right(QuoteModel.fromJson(responseBody));
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<QuoteModel>>> getAllLocalQuotes() async {
    try {
      return _mapQuotesToRightEntities(await _quotesDatabase.getQuotesEntries());
    } catch (e, stack) {
      debugPrintStack(stackTrace: stack, label: 'QuoteRepositoryImpl.getAllLocalQuotes');
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, int>> addQuote(QuoteModel quote) async {
    try {
      return _quotesDatabase
          .insertQuote(
            QuoteTableCompanion(
              id: Value(quote.id),
              content: Value(quote.content),
              author: Value(quote.author),
              length: Value(int.parse('${quote.length}')),
            ),
          )
          .then(Right.new);
    } catch (e, stack) {
      debugPrintStack(stackTrace: stack, label: 'QuoteRepositoryImpl.addQuote');
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, void>> removeQuote(String quoteId) async {
    try {
      return Right(await _quotesDatabase.removeQuote(quoteId));
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace, label: 'QuoteRepositoryImpl.removeQuote');
      return Left(ClientFailure(e));
    }
  }

  Right<Failure, List<QuoteModel>> _mapQuotesToRightEntities(List<Quote> items) =>
      Right<Failure, List<QuoteModel>>(items.map(QuoteModel.fromDbModel).toList());
}
