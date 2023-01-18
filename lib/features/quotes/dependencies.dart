import 'package:clixily/features/quotes/data/repositories/quote_repository_impl.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:clixily/features/quotes/domain/usecases/get_quote_use_case.dart';
import 'package:clixily/features/quotes/presentation/cubit/quote_cubit.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependencies(GetIt getIt) async {
  getIt
    ..registerSingleton<QuoteRepository>(QuoteRepositoryImpl(getIt()))
    ..registerFactory(() => GetQuoteUseCase(getIt()))
    ..registerFactory(() => QuoteCubit(getIt()));
}
