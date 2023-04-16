import 'package:clixily/core/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_quote_state.freezed.dart';

@freezed
class SingleQuoteState<QuoteModel> with _$SingleQuoteState<QuoteModel> {
  const factory SingleQuoteState.initial() = _Initial;

  const factory SingleQuoteState.inProgress() = _InProgress;

  const factory SingleQuoteState.loaded(QuoteModel quote) = _LoadedQuote;

  const factory SingleQuoteState.failure(Failure failure) = _Failure;
}
