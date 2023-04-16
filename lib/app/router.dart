import 'package:clixily/features/home/presentation/pages/home_page.dart';
import 'package:clixily/features/quotes/presentation/pages/add_quote_page.dart';
import 'package:clixily/features/quotes/presentation/pages/all_local_quotes_page.dart';
import 'package:clixily/features/quotes/presentation/pages/get_quote_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const kHomePage = '/';
  static const kGetQuotePage = '/get_quote';
  static const kAddQuotePage = '/add_quote';
  static const kAllLocalQuotesPage = '/all_local_quotes';
}

Route<dynamic> router(RouteSettings settings) {
  switch (settings.name) {
    case Routes.kHomePage:
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case Routes.kGetQuotePage:
      return MaterialPageRoute(
        builder: (context) => const GetQuotePage(),
      );
    case Routes.kAddQuotePage:
      return MaterialPageRoute(
        builder: (context) => const AddQuotePage(),
      );
    case Routes.kAllLocalQuotesPage:
      return MaterialPageRoute(
        builder: (context) => const AllLocalQuotesPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Text('Placeholder'),
      );
  }
}
