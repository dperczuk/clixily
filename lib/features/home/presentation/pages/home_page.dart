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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            _buildNavigateToGetQuotePageButton(context),
            const SizedBox(height: 16),
            _buildNavigateToAllLocalQuotesPageButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigateToGetQuotePageButton(BuildContext context) {
    return ElevatedButton(
      child: Text(S.of(context).quotePage),
      style: _buttonStyle,
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => GetQuotePage())),
    );
  }

  Widget _buildNavigateToAllLocalQuotesPageButton(BuildContext context) {
    return ElevatedButton(
      child: Text(S.of(context).allLocalQuotes),
      style: _buttonStyle,
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AllLocalQuotesPage())),
    );
  }

  ButtonStyle get _buttonStyle {
    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
