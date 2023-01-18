// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuoteState<QuoteModel> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(QuoteModel quote) loaded,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(QuoteModel quote)? loaded,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(QuoteModel quote)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<QuoteModel> value) initial,
    required TResult Function(_InProgress<QuoteModel> value) inProgress,
    required TResult Function(_LoadedQuote<QuoteModel> value) loaded,
    required TResult Function(_Failure<QuoteModel> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<QuoteModel> value)? initial,
    TResult? Function(_InProgress<QuoteModel> value)? inProgress,
    TResult? Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult? Function(_Failure<QuoteModel> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<QuoteModel> value)? initial,
    TResult Function(_InProgress<QuoteModel> value)? inProgress,
    TResult Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult Function(_Failure<QuoteModel> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteStateCopyWith<QuoteModel, $Res> {
  factory $QuoteStateCopyWith(QuoteState<QuoteModel> value, $Res Function(QuoteState<QuoteModel>) then) =
      _$QuoteStateCopyWithImpl<QuoteModel, $Res, QuoteState<QuoteModel>>;
}

/// @nodoc
class _$QuoteStateCopyWithImpl<QuoteModel, $Res, $Val extends QuoteState<QuoteModel>>
    implements $QuoteStateCopyWith<QuoteModel, $Res> {
  _$QuoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<QuoteModel, $Res> {
  factory _$$_InitialCopyWith(_$_Initial<QuoteModel> value, $Res Function(_$_Initial<QuoteModel>) then) =
      __$$_InitialCopyWithImpl<QuoteModel, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<QuoteModel, $Res>
    extends _$QuoteStateCopyWithImpl<QuoteModel, $Res, _$_Initial<QuoteModel>>
    implements _$$_InitialCopyWith<QuoteModel, $Res> {
  __$$_InitialCopyWithImpl(_$_Initial<QuoteModel> _value, $Res Function(_$_Initial<QuoteModel>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial<QuoteModel> implements _Initial<QuoteModel> {
  const _$_Initial();

  @override
  String toString() {
    return 'QuoteState<$QuoteModel>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_Initial<QuoteModel>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(QuoteModel quote) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(QuoteModel quote)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(QuoteModel quote)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<QuoteModel> value) initial,
    required TResult Function(_InProgress<QuoteModel> value) inProgress,
    required TResult Function(_LoadedQuote<QuoteModel> value) loaded,
    required TResult Function(_Failure<QuoteModel> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<QuoteModel> value)? initial,
    TResult? Function(_InProgress<QuoteModel> value)? inProgress,
    TResult? Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult? Function(_Failure<QuoteModel> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<QuoteModel> value)? initial,
    TResult Function(_InProgress<QuoteModel> value)? inProgress,
    TResult Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult Function(_Failure<QuoteModel> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<QuoteModel> implements QuoteState<QuoteModel> {
  const factory _Initial() = _$_Initial<QuoteModel>;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<QuoteModel, $Res> {
  factory _$$_InProgressCopyWith(_$_InProgress<QuoteModel> value, $Res Function(_$_InProgress<QuoteModel>) then) =
      __$$_InProgressCopyWithImpl<QuoteModel, $Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<QuoteModel, $Res>
    extends _$QuoteStateCopyWithImpl<QuoteModel, $Res, _$_InProgress<QuoteModel>>
    implements _$$_InProgressCopyWith<QuoteModel, $Res> {
  __$$_InProgressCopyWithImpl(_$_InProgress<QuoteModel> _value, $Res Function(_$_InProgress<QuoteModel>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgress<QuoteModel> implements _InProgress<QuoteModel> {
  const _$_InProgress();

  @override
  String toString() {
    return 'QuoteState<$QuoteModel>.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_InProgress<QuoteModel>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(QuoteModel quote) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(QuoteModel quote)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(QuoteModel quote)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<QuoteModel> value) initial,
    required TResult Function(_InProgress<QuoteModel> value) inProgress,
    required TResult Function(_LoadedQuote<QuoteModel> value) loaded,
    required TResult Function(_Failure<QuoteModel> value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<QuoteModel> value)? initial,
    TResult? Function(_InProgress<QuoteModel> value)? inProgress,
    TResult? Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult? Function(_Failure<QuoteModel> value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<QuoteModel> value)? initial,
    TResult Function(_InProgress<QuoteModel> value)? inProgress,
    TResult Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult Function(_Failure<QuoteModel> value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress<QuoteModel> implements QuoteState<QuoteModel> {
  const factory _InProgress() = _$_InProgress<QuoteModel>;
}

/// @nodoc
abstract class _$$_LoadedQuoteCopyWith<QuoteModel, $Res> {
  factory _$$_LoadedQuoteCopyWith(_$_LoadedQuote<QuoteModel> value, $Res Function(_$_LoadedQuote<QuoteModel>) then) =
      __$$_LoadedQuoteCopyWithImpl<QuoteModel, $Res>;
  @useResult
  $Res call({QuoteModel quote});
}

/// @nodoc
class __$$_LoadedQuoteCopyWithImpl<QuoteModel, $Res>
    extends _$QuoteStateCopyWithImpl<QuoteModel, $Res, _$_LoadedQuote<QuoteModel>>
    implements _$$_LoadedQuoteCopyWith<QuoteModel, $Res> {
  __$$_LoadedQuoteCopyWithImpl(_$_LoadedQuote<QuoteModel> _value, $Res Function(_$_LoadedQuote<QuoteModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = freezed,
  }) {
    return _then(_$_LoadedQuote<QuoteModel>(
      freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as QuoteModel,
    ));
  }
}

/// @nodoc

class _$_LoadedQuote<QuoteModel> implements _LoadedQuote<QuoteModel> {
  const _$_LoadedQuote(this.quote);

  @override
  final QuoteModel quote;

  @override
  String toString() {
    return 'QuoteState<$QuoteModel>.loaded(quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedQuote<QuoteModel> &&
            const DeepCollectionEquality().equals(other.quote, quote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(quote));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedQuoteCopyWith<QuoteModel, _$_LoadedQuote<QuoteModel>> get copyWith =>
      __$$_LoadedQuoteCopyWithImpl<QuoteModel, _$_LoadedQuote<QuoteModel>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(QuoteModel quote) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return loaded(quote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(QuoteModel quote)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return loaded?.call(quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(QuoteModel quote)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<QuoteModel> value) initial,
    required TResult Function(_InProgress<QuoteModel> value) inProgress,
    required TResult Function(_LoadedQuote<QuoteModel> value) loaded,
    required TResult Function(_Failure<QuoteModel> value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<QuoteModel> value)? initial,
    TResult? Function(_InProgress<QuoteModel> value)? inProgress,
    TResult? Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult? Function(_Failure<QuoteModel> value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<QuoteModel> value)? initial,
    TResult Function(_InProgress<QuoteModel> value)? inProgress,
    TResult Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult Function(_Failure<QuoteModel> value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedQuote<QuoteModel> implements QuoteState<QuoteModel> {
  const factory _LoadedQuote(final QuoteModel quote) = _$_LoadedQuote<QuoteModel>;

  QuoteModel get quote;
  @JsonKey(ignore: true)
  _$$_LoadedQuoteCopyWith<QuoteModel, _$_LoadedQuote<QuoteModel>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<QuoteModel, $Res> {
  factory _$$_FailureCopyWith(_$_Failure<QuoteModel> value, $Res Function(_$_Failure<QuoteModel>) then) =
      __$$_FailureCopyWithImpl<QuoteModel, $Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$_FailureCopyWithImpl<QuoteModel, $Res>
    extends _$QuoteStateCopyWithImpl<QuoteModel, $Res, _$_Failure<QuoteModel>>
    implements _$$_FailureCopyWith<QuoteModel, $Res> {
  __$$_FailureCopyWithImpl(_$_Failure<QuoteModel> _value, $Res Function(_$_Failure<QuoteModel>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure<QuoteModel>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failure<QuoteModel> implements _Failure<QuoteModel> {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'QuoteState<$QuoteModel>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<QuoteModel> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<QuoteModel, _$_Failure<QuoteModel>> get copyWith =>
      __$$_FailureCopyWithImpl<QuoteModel, _$_Failure<QuoteModel>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(QuoteModel quote) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(QuoteModel quote)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(QuoteModel quote)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<QuoteModel> value) initial,
    required TResult Function(_InProgress<QuoteModel> value) inProgress,
    required TResult Function(_LoadedQuote<QuoteModel> value) loaded,
    required TResult Function(_Failure<QuoteModel> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<QuoteModel> value)? initial,
    TResult? Function(_InProgress<QuoteModel> value)? inProgress,
    TResult? Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult? Function(_Failure<QuoteModel> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<QuoteModel> value)? initial,
    TResult Function(_InProgress<QuoteModel> value)? inProgress,
    TResult Function(_LoadedQuote<QuoteModel> value)? loaded,
    TResult Function(_Failure<QuoteModel> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<QuoteModel> implements QuoteState<QuoteModel> {
  const factory _Failure(final Failure failure) = _$_Failure<QuoteModel>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<QuoteModel, _$_Failure<QuoteModel>> get copyWith => throw _privateConstructorUsedError;
}
