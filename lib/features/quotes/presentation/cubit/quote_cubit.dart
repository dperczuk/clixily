import 'package:clixily/core/error/failures.dart';
import 'package:clixily/core/usecases/usecases.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/usecases/get_quote_use_case.dart';
import 'package:clixily/features/quotes/presentation/cubit/quote_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuoteCubit extends Cubit<QuoteState<QuoteModel>> {
  QuoteCubit(this._getQuoteUseCase) : super(const QuoteState.initial());

  final GetQuoteUseCase _getQuoteUseCase;

  Future<void> loadQuote() async {
    emit(const QuoteState.inProgress());

    try {
      final Either<Failure, QuoteModel> results = await _getQuoteUseCase.execute(NoParams());
      results.fold(
        (Failure failure) => emit(QuoteState.failure(failure)),
        (quote) => emit(QuoteState.loaded(quote)),
      );
    } catch (e) {
      emit(QuoteState.failure(ClientFailure(e)));
    }
  }
}
