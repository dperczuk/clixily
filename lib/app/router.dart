import 'package:clixily/features/home/presentation/pages/home_page.dart';
import 'package:clixily/features/quotes/presentation/pages/quote_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const kHomePage = '/';
  static const kQuotePage = '/quote';
}

Route<dynamic> router(RouteSettings settings) {
  switch (settings.name) {
    case Routes.kHomePage:
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case Routes.kQuotePage:
      return MaterialPageRoute(
        builder: (context) => const QuotePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Text('Placeholder'),
      );
  }
}
