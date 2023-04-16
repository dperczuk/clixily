import 'package:clixily/core/error/failures.dart';
import 'package:clixily/core/usecases/usecases.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/usecases/get_quote_use_case.dart';
import 'package:clixily/features/quotes/presentation/cubit/single_quote_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleQuoteCubit extends Cubit<SingleQuoteState<QuoteModel>> {
  SingleQuoteCubit(this._getQuoteUseCase) : super(const SingleQuoteState.initial());

  final GetQuoteUseCase _getQuoteUseCase;

  Future<void> loadQuote() async {
    emit(const SingleQuoteState.inProgress());

    final Either<Failure, QuoteModel> results = await _getQuoteUseCase.execute(NoParams());
    results.fold(
      (Failure failure) => emit(SingleQuoteState.failure(failure)),
      (quote) => emit(SingleQuoteState.loaded(quote)),
    );
  }
}
