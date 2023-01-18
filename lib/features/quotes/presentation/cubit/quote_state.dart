import 'package:clixily/core/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_state.freezed.dart';

@freezed
class QuoteState<QuoteModel> with _$QuoteState<QuoteModel> {
  const factory QuoteState.initial() = _Initial;

  const factory QuoteState.inProgress() = _InProgress;

  const factory QuoteState.loaded(QuoteModel quote) = _LoadedQuote;

  const factory QuoteState.failure(Failure failure) = _Failure;
}
