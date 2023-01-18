import 'package:clixily/core/error/failures.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:dartz/dartz.dart';

abstract class QuoteRepository {
  Future<Either<Failure, QuoteModel>> getQuote();
}
