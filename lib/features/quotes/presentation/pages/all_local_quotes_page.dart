import 'package:clixily/core/dependency_injection/domain/dependencies_container.dart';
import 'package:clixily/features/common/presentation/components/failure_view.dart';
import 'package:clixily/features/common/presentation/components/progress_view.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/presentation/cubit/all_local_quotes_cubit.dart';
import 'package:clixily/features/quotes/presentation/cubit/all_local_quotes_state.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllLocalQuotesPage extends StatelessWidget {
  const AllLocalQuotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AllLocalQuotesCubit>()..loadAllLocalQuotes(),
      child: Builder(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).allLocalQuotes),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(child: _buildAllLocalQuotesList(context)),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildAllLocalQuotesList(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BlocBuilder<AllLocalQuotesCubit, AllLocalQuotesState>(
        builder: (context, AllLocalQuotesState state) {
          return state.maybeWhen(
            loaded: (List<QuoteModel> quotes) {
              if (quotes.isNotEmpty) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: quotes.length,
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.deepPurpleAccent,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: _buildCardBody(context, quotes[index]),
                    );
                  },
                );
              }

              return Center(child: Text(S.of(context).localQuotesNotFound));
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
}
