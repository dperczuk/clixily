import 'package:clixily/core/data/database/clixily_database.dart';
import 'package:clixily/features/quotes/data/dataproviders/quote_db.dart';
import 'package:clixily/features/quotes/data/repositories/quote_repository_impl.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:clixily/features/quotes/domain/usecases/add_quote_use_case.dart';
import 'package:clixily/features/quotes/domain/usecases/get_all_local_quotes.dart';
import 'package:clixily/features/quotes/domain/usecases/get_quote_use_case.dart';
import 'package:clixily/features/quotes/presentation/cubit/add_quote_cubit.dart';
import 'package:clixily/features/quotes/presentation/cubit/all_local_quotes_cubit.dart';
import 'package:clixily/features/quotes/presentation/cubit/single_quote_cubit.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependencies(GetIt getIt) async {
  getIt
    ..registerSingleton<QuotesDatabase>(getIt<ClixilyDatabase>())
    ..registerSingleton<QuoteRepository>(QuoteRepositoryImpl(getIt(), getIt()))
    ..registerFactory(() => GetQuoteUseCase(getIt()))
    ..registerFactory(() => GetAllLocalQuotesUseCase(getIt()))
    ..registerFactory(() => AddQuoteUseCase(getIt()))
    ..registerFactory(() => SingleQuoteCubit(getIt()))
    ..registerFactory(() => AllLocalQuotesCubit(getIt()))
    ..registerFactory(() => AddQuoteCubit(getIt()));
}
