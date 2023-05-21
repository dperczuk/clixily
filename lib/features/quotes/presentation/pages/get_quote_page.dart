import 'package:clixily/core/dependency_injection/domain/dependencies_container.dart';
import 'package:clixily/features/common/presentation/components/failure_view.dart';
import 'package:clixily/features/common/presentation/components/progress_view.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/presentation/components/get_another_quote_button.dart';
import 'package:clixily/features/quotes/presentation/cubit/single_quote_cubit.dart';
import 'package:clixily/features/quotes/presentation/cubit/single_quote_state.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetQuotePage extends StatelessWidget {
  const GetQuotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<SingleQuoteCubit>()..loadQuote(),
      child: Builder(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).quotePage),
      ),
      body: Column(
        children: [
          _buildQuoteComponent(context),
          const SizedBox(height: 8),
          _buildGetAnotherQuoteButton(context),
        ],
      ),
    );
  }

  Widget _buildQuoteComponent(BuildContext context) {
    return SizedBox(
      height: 250,
      child: BlocBuilder<SingleQuoteCubit, SingleQuoteState<QuoteModel>>(
        builder: (context, SingleQuoteState<QuoteModel> state) {
          return state.maybeWhen(
            loaded: (QuoteModel quote) {
              return SizedBox(
                height: 200,
                child: Card(
                  color: Colors.deepPurpleAccent,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: _buildCardBody(context, quote),
                ),
              );
            },
            inProgress: () => const ProgressView(),
            failure: (failure) => FailureView(failure: failure),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildQuoteInfoRow(
    BuildContext context,
    String label,
    quoteInfo,
  ) {
    return Text(
      '$label: ${quoteInfo}',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }

  Widget _buildCardBody(
    BuildContext context,
    QuoteModel quote,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildQuoteInfoRow(
            context,
            S.of(context).quote,
            quote.content,
          ),
          const SizedBox(height: 6),
          _buildQuoteInfoRow(
            context,
            S.of(context).numberOfLetters,
            quote.length,
          ),
          const SizedBox(height: 6),
          _buildQuoteInfoRow(
            context,
            S.of(context).author,
            quote.author,
          ),
          const SizedBox(height: 6),
          _buildQuoteInfoRow(
            context,
            S.of(context).tags,
            quote.tags,
          ),
        ],
      ),
    );
  }

  Widget _buildGetAnotherQuoteButton(BuildContext context) {
    return BlocBuilder<SingleQuoteCubit, SingleQuoteState<QuoteModel>>(
      builder: (context, SingleQuoteState<QuoteModel> state) {
        return state.maybeWhen(
          loaded: (QuoteModel quote) => const GetAnotherQuoteButton(),
          inProgress: () => const ProgressView(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
