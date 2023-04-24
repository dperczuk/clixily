import 'package:clixily/core/error/failures.dart';
import 'package:clixily/core/usecases/usecases.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/usecases/get_all_local_quotes.dart';
import 'package:clixily/features/quotes/presentation/cubit/all_local_quotes_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllLocalQuotesCubit extends Cubit<AllLocalQuotesState> {
  AllLocalQuotesCubit(this._getAllLocalQuotesUseCase) : super(const AllLocalQuotesState.initial());

  final GetAllLocalQuotesUseCase _getAllLocalQuotesUseCase;

  Future<void> loadAllLocalQuotes() async {
    emit(const AllLocalQuotesState.inProgress());

    final Either<Failure, List<QuoteModel>> results = await _getAllLocalQuotesUseCase.execute(NoParams());
    results.fold(
      (Failure failure) => emit(AllLocalQuotesState.failure(failure)),
      (List<QuoteModel> quotes) => emit(AllLocalQuotesState.loaded(quotes)),
    );
  }
}
