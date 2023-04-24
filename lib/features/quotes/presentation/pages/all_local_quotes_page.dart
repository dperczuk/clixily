import 'package:clixily/core/dependency_injection/domain/dependencies_container.dart';
import 'package:clixily/features/common/presentation/components/fab.dart';
import 'package:clixily/features/quotes/presentation/components/all_local_quotes_list.dart';
import 'package:clixily/features/quotes/presentation/cubit/all_local_quotes_cubit.dart';
import 'package:clixily/features/quotes/presentation/cubit/remove_quote_cubit.dart';
import 'package:clixily/features/quotes/presentation/pages/add_quote_page.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllLocalQuotesPage extends StatelessWidget {
  const AllLocalQuotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<AllLocalQuotesCubit>()..loadAllLocalQuotes()),
        BlocProvider.value(value: getIt<RemoveQuoteCubit>()),
      ],
      child: Builder(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
      floatingActionButton: FabComponent(
        callback: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => AddQuotePage()),
        ).then(
          (_) => context.read<AllLocalQuotesCubit>()..loadAllLocalQuotes(),
        ),
      ),
      appBar: AppBar(
        title: Text(S.of(context).allLocalQuotes),
      ),
      body: Column(
        children: [
          Expanded(child: AllLocalQuotesList()),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
