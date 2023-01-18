import 'package:clixily/core/data/api_client.dart';
import 'package:clixily/core/error/failures.dart';
import 'package:clixily/features/quotes/data/models/quote_model.dart';
import 'package:clixily/features/quotes/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';

class QuoteRepositoryImpl extends QuoteRepository {
  QuoteRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<Failure, QuoteModel>> getQuote() async {
    try {
      final responseBody = await _apiClient.get('random');

      return Right(QuoteModel.fromJson(responseBody));
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }
}
