// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) => QuoteModel(
      content: json['content'] as String?,
      author: json['author'] as String?,
      length: json['length'] as num?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$QuoteModelToJson(QuoteModel instance) => <String, dynamic>{
      'content': instance.content,
      'author': instance.author,
      'length': instance.length,
      'tags': instance.tags,
    };
