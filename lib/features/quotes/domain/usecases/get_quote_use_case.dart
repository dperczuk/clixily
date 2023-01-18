import 'package:clixily/core/error/failures.dart';
import 'package:clixily/core/usecases/usecases.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';

class GetQuoteUseCase extends UseCase<QuoteModel, NoParams> {
  GetQuoteUseCase(this._quoteRepository);

  final QuoteRepository _quoteRepository;

  @override
  Future<Either<Failure, QuoteModel>> execute(NoParams noParams) {
    return _quoteRepository.getQuote();
  }
}
