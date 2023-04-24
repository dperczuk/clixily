import 'package:clixily/core/error/failures.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';

class RemoveQuoteUseCase {
  RemoveQuoteUseCase(this._quoteRepository);

  final QuoteRepository _quoteRepository;

  Future<Either<Failure, void>> execute({required String quoteId}) async => await _quoteRepository.removeQuote(quoteId);
}
