import 'package:clixily/features/quotes/presentation/pages/all_local_quotes_page.dart';
import 'package:clixily/features/quotes/presentation/pages/get_quote_page.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _tabOptions = [
    GetQuotePage(),
    AllLocalQuotesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _tabOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.psychology),
            label: S.of(context).getQuote,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: S.of(context).quotesList,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
