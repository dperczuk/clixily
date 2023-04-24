import 'package:clixily/features/common/presentation/components/failure_view.dart';
import 'package:clixily/features/common/presentation/components/progress_view.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/presentation/cubit/all_local_quotes_cubit.dart';
import 'package:clixily/features/quotes/presentation/cubit/all_local_quotes_state.dart';
import 'package:clixily/features/quotes/presentation/cubit/remove_quote_cubit.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class AllLocalQuotesList extends StatelessWidget {
  const AllLocalQuotesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildAllLocalQuotesList(context);
  }

  Widget _buildAllLocalQuotesList(BuildContext context) {
    return BlocBuilder<AllLocalQuotesCubit, AllLocalQuotesState>(
      builder: (context, AllLocalQuotesState state) {
        return state.maybeWhen(
          loaded: (List<QuoteModel> quotes) {
            if (quotes.isNotEmpty) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: quotes.length,
                padding: const EdgeInsets.all(12),
                itemBuilder: (BuildContext context, int index) {
                  return SwipeableTile.card(
                    color: Colors.deepPurpleAccent,
                    shadow: BoxShadow(
                      color: Colors.black.withOpacity(0.35),
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    ),
                    horizontalPadding: 16,
                    verticalPadding: 8,
                    direction: SwipeDirection.horizontal,
                    onSwiped: (_) => context.read<RemoveQuoteCubit>().removeQuote(quotes[index].id!),
                    backgroundBuilder: (_, SwipeDirection direction, AnimationController progress) {
                      return AnimatedBuilder(
                        animation: progress,
                        builder: (_, __) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            color: progress.value > 0.4 ? const Color(0xFFed7474) : const Color(0xFFeded98),
                          );
                        },
                      );
                    },
                    key: UniqueKey(),
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
