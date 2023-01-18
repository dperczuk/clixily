import 'package:clixily/core/theme/theme.dart';
import 'package:clixily/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'router.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.appName,
  }) : super(key: key);

  final String appName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: appName,
      theme: getAppTheme(context),
      darkTheme: getAppTheme(context),
      initialRoute: '/',
      onGenerateRoute: (settings) => router(settings),
    );
  }
}
