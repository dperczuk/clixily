// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clixily_database.dart';

// ignore_for_file: type=lint
class $QuoteTableTable extends QuoteTable with TableInfo<$QuoteTableTable, Quote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuoteTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id =
      GeneratedColumn<String>('id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content =
      GeneratedColumn<String>('content', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author =
      GeneratedColumn<String>('author', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lengthMeta = const VerificationMeta('length');
  @override
  late final GeneratedColumn<int> length =
      GeneratedColumn<int>('length', aliasedName, true, type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, content, author, length];
  @override
  String get aliasedName => _alias ?? 'quote_table';
  @override
  String get actualTableName => 'quote_table';
  @override
  VerificationContext validateIntegrity(Insertable<Quote> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta, content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta, author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('length')) {
      context.handle(_lengthMeta, length.isAcceptableOrUnknown(data['length']!, _lengthMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Quote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Quote(
      id: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      content: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}content']),
      author: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}author']),
      length: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}length']),
    );
  }

  @override
  $QuoteTableTable createAlias(String alias) {
    return $QuoteTableTable(attachedDatabase, alias);
  }
}

class Quote extends DataClass implements Insertable<Quote> {
  final String id;
  final String? content;
  final String? author;
  final int? length;
  const Quote({required this.id, this.content, this.author, this.length});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || length != null) {
      map['length'] = Variable<int>(length);
    }
    return map;
  }

  QuoteTableCompanion toCompanion(bool nullToAbsent) {
    return QuoteTableCompanion(
      id: Value(id),
      content: content == null && nullToAbsent ? const Value.absent() : Value(content),
      author: author == null && nullToAbsent ? const Value.absent() : Value(author),
      length: length == null && nullToAbsent ? const Value.absent() : Value(length),
    );
  }

  factory Quote.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Quote(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String?>(json['content']),
      author: serializer.fromJson<String?>(json['author']),
      length: serializer.fromJson<int?>(json['length']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String?>(content),
      'author': serializer.toJson<String?>(author),
      'length': serializer.toJson<int?>(length),
    };
  }

  Quote copyWith(
          {String? id,
          Value<String?> content = const Value.absent(),
          Value<String?> author = const Value.absent(),
          Value<int?> length = const Value.absent()}) =>
      Quote(
        id: id ?? this.id,
        content: content.present ? content.value : this.content,
        author: author.present ? author.value : this.author,
        length: length.present ? length.value : this.length,
      );
  @override
  String toString() {
    return (StringBuffer('Quote(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('author: $author, ')
          ..write('length: $length')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, content, author, length);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Quote &&
          other.id == this.id &&
          other.content == this.content &&
          other.author == this.author &&
          other.length == this.length);
}

class QuoteTableCompanion extends UpdateCompanion<Quote> {
  final Value<String> id;
  final Value<String?> content;
  final Value<String?> author;
  final Value<int?> length;
  final Value<int> rowid;
  const QuoteTableCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.author = const Value.absent(),
    this.length = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuoteTableCompanion.insert({
    required String id,
    this.content = const Value.absent(),
    this.author = const Value.absent(),
    this.length = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Quote> custom({
    Expression<String>? id,
    Expression<String>? content,
    Expression<String>? author,
    Expression<int>? length,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'content': content,
      if (author != null) 'author': author,
      if (length != null) 'length': length,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuoteTableCompanion copyWith(
      {Value<String>? id, Value<String?>? content, Value<String?>? author, Value<int?>? length, Value<int>? rowid}) {
    return QuoteTableCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      author: author ?? this.author,
      length: length ?? this.length,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (length.present) {
      map['length'] = Variable<int>(length.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuoteTableCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('author: $author, ')
          ..write('length: $length, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ClixilyDatabase extends GeneratedDatabase {
  _$ClixilyDatabase(QueryExecutor e) : super(e);
  late final $QuoteTableTable quoteTable = $QuoteTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables => allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [quoteTable];
}
