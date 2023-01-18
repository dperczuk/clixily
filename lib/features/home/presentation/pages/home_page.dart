import 'package:clixily/features/quotes/presentation/pages/quote_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clixily App'),
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
      child: const Text('Quote Page'),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => QuotePage()));
      },
    );
  }
}
