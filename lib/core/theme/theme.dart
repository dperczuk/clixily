import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
          backgroundColor: Colors.green,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
    scaffoldBackgroundColor: Colors.white,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
  );
}
