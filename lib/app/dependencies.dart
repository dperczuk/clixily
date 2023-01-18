import 'package:get_it/get_it.dart';
import 'package:clixily/features/quotes/dependencies.dart' as quotes;
import 'package:clixily/core/dependencies.dart' as core;

Future<void> setupDependencies(GetIt sl, {required String clixilyApiUrl}) async {
  await core.setupDependencies(sl, clixilyApiUrl: clixilyApiUrl);
  await quotes.setupDependencies(sl);
}
