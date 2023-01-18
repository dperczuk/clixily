import 'package:clixily/features/quotes/presentation/pages/quote_page.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appName),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            _buildNavigateToQuotePageButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigateToQuotePageButton(BuildContext context) {
    return ElevatedButton(
      child: Text(S.of(context).quotePage),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => QuotePage()),
        );
      },
    );
  }
}
