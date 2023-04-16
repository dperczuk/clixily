import 'package:clixily/features/quotes/presentation/pages/add_quote_page.dart';
import 'package:clixily/features/quotes/presentation/pages/all_local_quotes_page.dart';
import 'package:clixily/features/quotes/presentation/pages/get_quote_page.dart';
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
            _buildNavigateToGetQuotePageButton(context),
            const SizedBox(height: 16),
            _buildNavigateToAllLocalQuotesPageButton(context),
            const SizedBox(height: 16),
            _buildNavigateToAddQuotePageButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigateToGetQuotePageButton(BuildContext context) {
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
          MaterialPageRoute(builder: (_) => GetQuotePage()),
        );
      },
    );
  }

  Widget _buildNavigateToAllLocalQuotesPageButton(BuildContext context) {
    return ElevatedButton(
      child: Text(S.of(context).allLocalQuotes),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => AllLocalQuotesPage()),
        );
      },
    );
  }

  Widget _buildNavigateToAddQuotePageButton(BuildContext context) {
    return ElevatedButton(
      child: Text(S.of(context).addQuote),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => AddQuotePage()),
        );
      },
    );
  }
}
