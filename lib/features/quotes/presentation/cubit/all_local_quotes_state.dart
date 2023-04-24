import 'package:clixily/core/error/failures.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_local_quotes_state.freezed.dart';

@freezed
class AllLocalQuotesState with _$AllLocalQuotesState {
  const factory AllLocalQuotesState.initial() = _Initial;

  const factory AllLocalQuotesState.inProgress() = _InProgress;

  const factory AllLocalQuotesState.loaded(List<QuoteModel> quotes) = _LoadedQuotes;

  const factory AllLocalQuotesState.failure(Failure failure) = _Failure;
}
