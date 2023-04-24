import 'package:clixily/core/data/api/api_client.dart';
import 'package:clixily/core/data/database/clixily_database.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependencies(GetIt getIt, {required String clixilyApiUrl}) async {
  getIt
    ..registerSingleton<ApiClient>(ApiClient(clixilyApiUrl))
    ..registerSingleton<ClixilyDatabase>(ClixilyDatabase.initialize());
  ;
}
