import 'package:clixily/core/dependency_injection/domain/dependencies_container.dart';
import 'package:clixily/features/quotes/presentation/cubit/add_quote_cubit.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddQuotePage extends StatelessWidget {
  const AddQuotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AddQuoteCubit>(),
      child: Builder(builder: _buildBody),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).addQuote),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // _buildQuoteComponent(context),
            const SizedBox(height: 8),
            _buildAddNewQuoteButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAddNewQuoteButton(BuildContext context) {
    return ElevatedButton(
      child: Text(
        S.of(context).addQuote.toUpperCase(),
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
      onPressed: () => context.read<AddQuoteCubit>().addQuote('123123', 'aaaaaaaaaa', 'Aaaaa Bbbbb', 15),
    );
  }
}
