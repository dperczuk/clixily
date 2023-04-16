import 'package:clixily/core/error/failures.dart';
import 'package:clixily/core/usecases/usecases.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllLocalQuotesUseCase extends UseCase<List<QuoteModel>, NoParams> {
  GetAllLocalQuotesUseCase(this._quoteRepository);

  final QuoteRepository _quoteRepository;

  @override
  Future<Either<Failure, List<QuoteModel>>> execute(NoParams noParams) {
    return _quoteRepository.getAllLocalQuotes();
  }
}
