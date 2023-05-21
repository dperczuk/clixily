import 'package:clixily/features/quotes/presentation/cubit/single_quote_cubit.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAnotherQuoteButton extends StatelessWidget {
  const GetAnotherQuoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        S.of(context).getAnotherQuote.toUpperCase(),
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
      onPressed: () => context.read<SingleQuoteCubit>().loadQuote(),
    );
  }
}
