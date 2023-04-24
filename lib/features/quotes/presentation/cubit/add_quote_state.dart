import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_quote_state.freezed.dart';

@freezed
class AddQuoteState with _$AddQuoteState {
  const factory AddQuoteState.initial() = _Initial;

  const factory AddQuoteState.inProgress() = _InProgress;

  const factory AddQuoteState.success() = _Success;

  const factory AddQuoteState.failure() = _Failure;
}
