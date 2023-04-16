import 'package:clixily/core/error/failures.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';

class AddQuoteUseCase {
  AddQuoteUseCase(this._quoteRepository);

  final QuoteRepository _quoteRepository;

  Future<Either<Failure, void>> execute({
    required String content,
    required String author,
    required num length,
  }) async {
    final result = await _quoteRepository.addQuote(
      QuoteModel(
        content: content,
        author: author,
        length: length,
        tags: [],
      ),
    );
    result.fold(Left.new, (r) async => r);
    return result;
  }
}
