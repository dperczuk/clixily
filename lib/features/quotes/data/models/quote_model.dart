import 'package:clixily/core/data/database/clixily_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_model.g.dart';

@JsonSerializable()
class QuoteModel {
  QuoteModel({
    required this.id,
    required this.content,
    required this.author,
    required this.length,
    required this.tags,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) => _$QuoteModelFromJson(json);

  final String id;
  final String? content;
  final String? author;
  final num? length;
  final List<String>? tags;

  factory QuoteModel.fromDbModel(Quote quote) {
    return QuoteModel(
      id: quote.id!,
      content: quote.content,
      author: quote.author,
      length: quote.length,
      tags: [],
    );
  }
}
