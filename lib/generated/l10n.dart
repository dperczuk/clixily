// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
        _current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Clixily App`
  String get appName {
    return Intl.message(
      'Clixily App',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Quote Page`
  String get quotePage {
    return Intl.message(
      'Quote Page',
      name: 'quotePage',
      desc: '',
      args: [],
    );
  }

  /// `Add Quote`
  String get addQuote {
    return Intl.message(
      'Add Quote',
      name: 'addQuote',
      desc: '',
      args: [],
    );
  }

  /// `Enter Quote`
  String get enterQuote {
    return Intl.message(
      'Enter Quote',
      name: 'enterQuote',
      desc: '',
      args: [],
    );
  }

  /// `Enter author`
  String get enterAuthor {
    return Intl.message(
      'Enter author',
      name: 'enterAuthor',
      desc: '',
      args: [],
    );
  }

  /// `Get another quote`
  String get getAnotherQuote {
    return Intl.message(
      'Get another quote',
      name: 'getAnotherQuote',
      desc: '',
      args: [],
    );
  }

  /// `Get quote`
  String get getQuote {
    return Intl.message(
      'Get quote',
      name: 'getQuote',
      desc: '',
      args: [],
    );
  }

  /// `Quotes List`
  String get quotesList {
    return Intl.message(
      'Quotes List',
      name: 'quotesList',
      desc: '',
      args: [],
    );
  }

  /// `Quote`
  String get quote {
    return Intl.message(
      'Quote',
      name: 'quote',
      desc: '',
      args: [],
    );
  }

  /// `Number of letters`
  String get numberOfLetters {
    return Intl.message(
      'Number of letters',
      name: 'numberOfLetters',
      desc: '',
      args: [],
    );
  }

  /// `Author`
  String get author {
    return Intl.message(
      'Author',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `All Local Quotes`
  String get allLocalQuotes {
    return Intl.message(
      'All Local Quotes',
      name: 'allLocalQuotes',
      desc: '',
      args: [],
    );
  }

  /// `Local Quotes not found`
  String get localQuotesNotFound {
    return Intl.message(
      'Local Quotes not found',
      name: 'localQuotesNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the quote`
  String get pleaseEnterQuote {
    return Intl.message(
      'Please enter the quote',
      name: 'pleaseEnterQuote',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the author`
  String get pleaseEnterAuthor {
    return Intl.message(
      'Please enter the author',
      name: 'pleaseEnterAuthor',
      desc: '',
      args: [],
    );
  }

  /// `Please enter length`
  String get pleaseEnterLength {
    return Intl.message(
      'Please enter length',
      name: 'pleaseEnterLength',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
