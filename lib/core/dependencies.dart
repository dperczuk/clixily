import 'package:clixily/core/data/api_client.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependencies(GetIt getIt, {required String clixilyApiUrl}) async {
  getIt..registerSingleton<ApiClient>(ApiClient(clixilyApiUrl));
}
