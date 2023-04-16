import 'package:bloc/bloc.dart';
import 'package:clixily/features/quotes/domain/usecases/add_quote_use_case.dart';
import 'package:clixily/features/quotes/presentation/cubit/add_quote_state.dart';

class AddQuoteCubit extends Cubit<AddQuoteState> {
  AddQuoteCubit(this._addQuoteUseCase) : super(const AddQuoteState.initial());

  final AddQuoteUseCase _addQuoteUseCase;

  Future<void> addQuote(
    String quoteId,
    String content,
    String author,
    num length,
  ) async {
    emit(const AddQuoteState.inProgress());
    final result = await _addQuoteUseCase.execute(
      content: content,
      author: author,
      length: length,
    );
    result.fold(
      (l) => emit(const AddQuoteState.failure()),
      (r) => emit(const AddQuoteState.success()),
    );
  }
}
