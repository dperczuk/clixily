import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_model.g.dart';

@JsonSerializable()
class QuoteModel {
  QuoteModel({
    required this.content,
    required this.author,
    required this.length,
    required this.tags,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) => _$QuoteModelFromJson(json);

  final String? content;
  final String? author;
  final num? length;
  final List<String>? tags;
}
