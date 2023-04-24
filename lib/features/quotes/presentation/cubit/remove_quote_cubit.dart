import 'package:bloc/bloc.dart';
import 'package:clixily/features/quotes/domain/usecases/remove_quote_use_case.dart';
import 'package:clixily/features/quotes/presentation/cubit/add_quote_state.dart';

class RemoveQuoteCubit extends Cubit<AddQuoteState> {
  RemoveQuoteCubit(this._removeQuoteUseCase) : super(const AddQuoteState.initial());

  final RemoveQuoteUseCase _removeQuoteUseCase;

  Future<void> removeQuote(String quoteId) async => _removeQuoteUseCase.execute(quoteId: quoteId);
}
