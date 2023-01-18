import 'package:clixily/core/dependency_injection/domain/dependencies_container.dart';
import 'package:clixily/features/common/presentation/components/failure_view.dart';
import 'package:clixily/features/common/presentation/components/progress_view.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/presentation/cubit/quote_cubit.dart';
import 'package:clixily/features/quotes/presentation/cubit/quote_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<QuoteCubit>()..loadQuote(),
      child: Builder(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quote Page'),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: BlocBuilder<QuoteCubit, QuoteState<QuoteModel>>(
                  builder: (context, QuoteState<QuoteModel> state) {
                    return state.maybeWhen(
                      loaded: (QuoteModel quote) {
                        return Card(
                          color: Colors.deepPurpleAccent,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: _buildCardBody(context, quote),
                        );
                      },
                      inProgress: () => const ProgressView(),
                      failure: (failure) => FailureView(failure: failure),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              _buildRefreshButton(context),
            ],
          ),
        ));
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
          _buildQuoteInfoRow(context, 'Quote', quote.content),
          const SizedBox(height: 6),
          _buildQuoteInfoRow(context, 'Number of letters', quote.length),
          const SizedBox(height: 6),
          _buildQuoteInfoRow(context, 'Author', quote.author),
          const SizedBox(height: 6),
          _buildQuoteInfoRow(context, 'Tags', quote.tags),
        ],
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

  Widget _buildRefreshButton(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'Get another quote'.toUpperCase(),
        style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 16),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(color: Colors.deepPurpleAccent),
          ),
        ),
      ),
      onPressed: () => context.read<QuoteCubit>().loadQuote(),
    );
  }
}
