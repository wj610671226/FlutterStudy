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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
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

  /// `kitchen`
  String get tab_kitchen {
    return Intl.message(
      'kitchen',
      name: 'tab_kitchen',
      desc: '',
      args: [],
    );
  }

  /// `bazaar`
  String get tab_bazaar {
    return Intl.message(
      'bazaar',
      name: 'tab_bazaar',
      desc: '',
      args: [],
    );
  }

  /// `classroom`
  String get tab_classroom {
    return Intl.message(
      'classroom',
      name: 'tab_classroom',
      desc: '',
      args: [],
    );
  }

  /// `collect`
  String get tab_collect {
    return Intl.message(
      'collect',
      name: 'tab_collect',
      desc: '',
      args: [],
    );
  }

  /// `mine`
  String get tab_mine {
    return Intl.message(
      'mine',
      name: 'tab_mine',
      desc: '',
      args: [],
    );
  }

  /// `Search for ingredients`
  String get search_place_holder {
    return Intl.message(
      'Search for ingredients',
      name: 'search_place_holder',
      desc: '',
      args: [],
    );
  }

  /// `recommend`
  String get recommend {
    return Intl.message(
      'recommend',
      name: 'recommend',
      desc: '',
      args: [],
    );
  }

  /// `attention`
  String get attention {
    return Intl.message(
      'attention',
      name: 'attention',
      desc: '',
      args: [],
    );
  }

  /// `video`
  String get video {
    return Intl.message(
      'video',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `upload_cookbook`
  String get upload_cookbook {
    return Intl.message(
      'upload_cookbook',
      name: 'upload_cookbook',
      desc: '',
      args: [],
    );
  }

  /// `upload_works`
  String get upload_works {
    return Intl.message(
      'upload_works',
      name: 'upload_works',
      desc: '',
      args: [],
    );
  }

  /// `upload_video`
  String get upload_video {
    return Intl.message(
      'upload_video',
      name: 'upload_video',
      desc: '',
      args: [],
    );
  }

  /// `The person sharing is the angel in the kitchen`
  String get upload_share_message {
    return Intl.message(
      'The person sharing is the angel in the kitchen',
      name: 'upload_share_message',
      desc: '',
      args: [],
    );
  }

  /// `cookbook category`
  String get cookbook_category {
    return Intl.message(
      'cookbook category',
      name: 'cookbook_category',
      desc: '',
      args: [],
    );
  }

  /// `recommended`
  String get recommended_to_you {
    return Intl.message(
      'recommended',
      name: 'recommended_to_you',
      desc: '',
      args: [],
    );
  }

  /// `kitchen activity`
  String get kitchen_activity {
    return Intl.message(
      'kitchen activity',
      name: 'kitchen_activity',
      desc: '',
      args: [],
    );
  }

  /// `other login`
  String get other_login {
    return Intl.message(
      'other login',
      name: 'other_login',
      desc: '',
      args: [],
    );
  }

  /// `we chat login`
  String get we_chat_login {
    return Intl.message(
      'we chat login',
      name: 'we_chat_login',
      desc: '',
      args: [],
    );
  }

  /// `phone login`
  String get phone_login {
    return Intl.message(
      'phone login',
      name: 'phone_login',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `empty data`
  String get empty_data {
    return Intl.message(
      'empty data',
      name: 'empty_data',
      desc: '',
      args: [],
    );
  }

  /// `setting`
  String get setting {
    return Intl.message(
      'setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `night mode`
  String get night_mode {
    return Intl.message(
      'night mode',
      name: 'night_mode',
      desc: '',
      args: [],
    );
  }

  /// `user agreement`
  String get user_agreement {
    return Intl.message(
      'user agreement',
      name: 'user_agreement',
      desc: '',
      args: [],
    );
  }

  /// `click user agreement`
  String get click_user_agreement {
    return Intl.message(
      'click user agreement',
      name: 'click_user_agreement',
      desc: '',
      args: [],
    );
  }

  /// `privacy policy`
  String get privacy_policy {
    return Intl.message(
      'privacy policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Login means you agree to go to the kitchen`
  String get agree_user_agreement {
    return Intl.message(
      'Login means you agree to go to the kitchen',
      name: 'agree_user_agreement',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Fun because of kitchen friends`
  String get fun_because_of_kitchen_friends {
    return Intl.message(
      'Fun because of kitchen friends',
      name: 'fun_because_of_kitchen_friends',
      desc: '',
      args: [],
    );
  }

  /// `Save the food and love`
  String get save_food {
    return Intl.message(
      'Save the food and love',
      name: 'save_food',
      desc: '',
      args: [],
    );
  }

  /// `Start getting ready to eat`
  String get ready_eat {
    return Intl.message(
      'Start getting ready to eat',
      name: 'ready_eat',
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
      Locale.fromSubtags(languageCode: 'zh'),
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
