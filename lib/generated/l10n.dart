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

  /// `Hello News , Hello World..!`
  String get slogan {
    return Intl.message(
      'Hello News , Hello World..!',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Dicover`
  String get discoverTitle {
    return Intl.message(
      'Dicover',
      name: 'discoverTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose the language`
  String get onBordingtitle1 {
    return Intl.message(
      'Choose the language',
      name: 'onBordingtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Do you follow world news?`
  String get onBordingtitle2 {
    return Intl.message(
      'Do you follow world news?',
      name: 'onBordingtitle2',
      desc: '',
      args: [],
    );
  }

  /// `You can now view the latest news around the world from our application.`
  String get onBordingDescription2 {
    return Intl.message(
      'You can now view the latest news around the world from our application.',
      name: 'onBordingDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Categories and subcategories`
  String get onBordingtitle3 {
    return Intl.message(
      'Categories and subcategories',
      name: 'onBordingtitle3',
      desc: '',
      args: [],
    );
  }

  /// `You can now view news categories such as sports - business - health - education, etc. You can also find the latest news in sub-categories such as football, basketball, the stock market, etc....`
  String get onBordingDescription3 {
    return Intl.message(
      'You can now view news categories such as sports - business - health - education, etc. You can also find the latest news in sub-categories such as football, basketball, the stock market, etc....',
      name: 'onBordingDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Dicover`
  String get discoverNavBar {
    return Intl.message(
      'Dicover',
      name: 'discoverNavBar',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get exploreNavBar {
    return Intl.message(
      'Explore',
      name: 'exploreNavBar',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message(
      'Settings',
      name: 'settingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Top`
  String get topCat {
    return Intl.message(
      'Top',
      name: 'topCat',
      desc: '',
      args: [],
    );
  }

  /// `Sports`
  String get sportCat {
    return Intl.message(
      'Sports',
      name: 'sportCat',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get businessCat {
    return Intl.message(
      'Business',
      name: 'businessCat',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get educationCat {
    return Intl.message(
      'Education',
      name: 'educationCat',
      desc: '',
      args: [],
    );
  }

  /// `World`
  String get worldCat {
    return Intl.message(
      'World',
      name: 'worldCat',
      desc: '',
      args: [],
    );
  }

  /// `Technology`
  String get techCat {
    return Intl.message(
      'Technology',
      name: 'techCat',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get healthCat {
    return Intl.message(
      'Health',
      name: 'healthCat',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get titleSubCat {
    return Intl.message(
      'Explore',
      name: 'titleSubCat',
      desc: '',
      args: [],
    );
  }

  /// `See more`
  String get seemore {
    return Intl.message(
      'See more',
      name: 'seemore',
      desc: '',
      args: [],
    );
  }

  /// `Top`
  String get topSubCat {
    return Intl.message(
      'Top',
      name: 'topSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Sports`
  String get sportsSubCat {
    return Intl.message(
      'Sports',
      name: 'sportsSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Football`
  String get footballSubCat {
    return Intl.message(
      'Football',
      name: 'footballSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Basketball`
  String get basketSubCat {
    return Intl.message(
      'Basketball',
      name: 'basketSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Tennis`
  String get tennisSubCat {
    return Intl.message(
      'Tennis',
      name: 'tennisSubCat',
      desc: '',
      args: [],
    );
  }

  /// `American football`
  String get americanfootballSubCat {
    return Intl.message(
      'American football',
      name: 'americanfootballSubCat',
      desc: '',
      args: [],
    );
  }

  /// `karate`
  String get karateSubCat {
    return Intl.message(
      'karate',
      name: 'karateSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Racing`
  String get racingSubCat {
    return Intl.message(
      'Racing',
      name: 'racingSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get businessSubCat {
    return Intl.message(
      'Business',
      name: 'businessSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Economics`
  String get econoSubCat {
    return Intl.message(
      'Economics',
      name: 'econoSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Stock market`
  String get stockSubCat {
    return Intl.message(
      'Stock market',
      name: 'stockSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Finance`
  String get financeSubCat {
    return Intl.message(
      'Finance',
      name: 'financeSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Marketing`
  String get marketingSubCat {
    return Intl.message(
      'Marketing',
      name: 'marketingSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get eduSubCat {
    return Intl.message(
      'Education',
      name: 'eduSubCat',
      desc: '',
      args: [],
    );
  }

  /// `World`
  String get worldSubCat {
    return Intl.message(
      'World',
      name: 'worldSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Palestine`
  String get palestineSubCat {
    return Intl.message(
      'Palestine',
      name: 'palestineSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Technology`
  String get tecSubCat {
    return Intl.message(
      'Technology',
      name: 'tecSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get healthSubCat {
    return Intl.message(
      'Health',
      name: 'healthSubCat',
      desc: '',
      args: [],
    );
  }

  /// `Latest News`
  String get lastesNewsTitle {
    return Intl.message(
      'Latest News',
      name: 'lastesNewsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get exploreViewTitle {
    return Intl.message(
      'Explore',
      name: 'exploreViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search:`
  String get searchTFF {
    return Intl.message(
      'Search:',
      name: 'searchTFF',
      desc: '',
      args: [],
    );
  }

  /// `Results`
  String get results {
    return Intl.message(
      'Results',
      name: 'results',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get lightSwitch {
    return Intl.message(
      'Light',
      name: 'lightSwitch',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get darkSwitch {
    return Intl.message(
      'Dark',
      name: 'darkSwitch',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Internet connection timeout`
  String get errorInternetTimeout {
    return Intl.message(
      'Internet connection timeout',
      name: 'errorInternetTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Check your internet connection`
  String get errorInternetConnection {
    return Intl.message(
      'Check your internet connection',
      name: 'errorInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Send request timeout`
  String get errorSendTimeout {
    return Intl.message(
      'Send request timeout',
      name: 'errorSendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Receive request timeout`
  String get errorReceiveTimeout {
    return Intl.message(
      'Receive request timeout',
      name: 'errorReceiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `A bad certificate with a server`
  String get errorBadCertificate {
    return Intl.message(
      'A bad certificate with a server',
      name: 'errorBadCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Your request has not been found, please check your request or try again later`
  String get error404 {
    return Intl.message(
      'Your request has not been found, please check your request or try again later',
      name: 'error404',
      desc: '',
      args: [],
    );
  }

  /// `Server error, please try again later`
  String get error500 {
    return Intl.message(
      'Server error, please try again later',
      name: 'error500',
      desc: '',
      args: [],
    );
  }

  /// `Oops,  you have exceeded the permissible limit of daily news results, as it is allowed to count (200) news per day at a rate of (30) news per quarter of an hour, please try later, also you can go to the search and search for what you want from the news.`
  String get errorNum {
    return Intl.message(
      'Oops,  you have exceeded the permissible limit of daily news results, as it is allowed to count (200) news per day at a rate of (30) news per quarter of an hour, please try later, also you can go to the search and search for what you want from the news.',
      name: 'errorNum',
      desc: '',
      args: [],
    );
  }

  /// `Oops, you have exceeded the allowed limit of news results, as you are allowed daily to count (100) news from the search results at a rate of (50) news every 12 hours, please try later`
  String get errorNumSearch {
    return Intl.message(
      'Oops, you have exceeded the allowed limit of news results, as you are allowed daily to count (100) news from the search results at a rate of (50) news every 12 hours, please try later',
      name: 'errorNumSearch',
      desc: '',
      args: [],
    );
  }

  /// `Your request was canceled`
  String get errorCancel {
    return Intl.message(
      'Your request was canceled',
      name: 'errorCancel',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error, please try again`
  String get errorUnKnown {
    return Intl.message(
      'Unexpected Error, please try again',
      name: 'errorUnKnown',
      desc: '',
      args: [],
    );
  }

  /// `This news does not contain an image`
  String get errorImage {
    return Intl.message(
      'This news does not contain an image',
      name: 'errorImage',
      desc: '',
      args: [],
    );
  }

  /// `Enter text to search`
  String get textFormError {
    return Intl.message(
      'Enter text to search',
      name: 'textFormError',
      desc: '',
      args: [],
    );
  }

  /// `There is no recent news about this topic today, you can choose another topic at the moment or you can go to the search`
  String get homeListEmpty {
    return Intl.message(
      'There is no recent news about this topic today, you can choose another topic at the moment or you can go to the search',
      name: 'homeListEmpty',
      desc: '',
      args: [],
    );
  }

  /// `There is no news about this topic currently. You can search for another topic, knowing you must write the name correctly without spelling errors.`
  String get searchListEmpty {
    return Intl.message(
      'There is no news about this topic currently. You can search for another topic, knowing you must write the name correctly without spelling errors.',
      name: 'searchListEmpty',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get aboutUs {
    return Intl.message(
      'About us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `The Hello World application is a special application for news around the world in more than one field. On the home page, you will find some main search categories that you can choose from as they display the news in images. You will also find some sub-categories from which you can choose and the latest news related to them will be displayed in a list—the latest news.`
  String get overview1 {
    return Intl.message(
      'The Hello World application is a special application for news around the world in more than one field. On the home page, you will find some main search categories that you can choose from as they display the news in images. You will also find some sub-categories from which you can choose and the latest news related to them will be displayed in a list—the latest news.',
      name: 'overview1',
      desc: '',
      args: [],
    );
  }

  /// `You will also find a special search page to search for any news you want.`
  String get overview2 {
    return Intl.message(
      'You will also find a special search page to search for any news you want.',
      name: 'overview2',
      desc: '',
      args: [],
    );
  }

  /// `On the settings page, you can choose the mode (dark - light) and also choose the language (English - Arabic).`
  String get overview3 {
    return Intl.message(
      'On the settings page, you can choose the mode (dark - light) and also choose the language (English - Arabic).',
      name: 'overview3',
      desc: '',
      args: [],
    );
  }

  /// `NB:`
  String get nb {
    return Intl.message(
      'NB:',
      name: 'nb',
      desc: '',
      args: [],
    );
  }

  /// `This news has a specific daily limit that cannot be exceeded, as the main page news has a specific limit, which is 200 searches per day, with an average of 30 searches in a quarter of an hour. When this message appears, you can try again after the first quarter of an hour the next day.`
  String get nb1 {
    return Intl.message(
      'This news has a specific daily limit that cannot be exceeded, as the main page news has a specific limit, which is 200 searches per day, with an average of 30 searches in a quarter of an hour. When this message appears, you can try again after the first quarter of an hour the next day.',
      name: 'nb1',
      desc: '',
      args: [],
    );
  }

  /// `The news search page has a specific limit of 100 searches per day, with an average of 50 searches within 12 hours. When this message appears, you can try it again after 12 hours or the next day.`
  String get nb2 {
    return Intl.message(
      'The news search page has a specific limit of 100 searches per day, with an average of 50 searches within 12 hours. When this message appears, you can try it again after 12 hours or the next day.',
      name: 'nb2',
      desc: '',
      args: [],
    );
  }

  /// `Features`
  String get features {
    return Intl.message(
      'Features',
      name: 'features',
      desc: '',
      args: [],
    );
  }

  /// `About Programmer`
  String get aboutProgrammer {
    return Intl.message(
      'About Programmer',
      name: 'aboutProgrammer',
      desc: '',
      args: [],
    );
  }

  /// `Mohamed Hossam`
  String get mohamed {
    return Intl.message(
      'Mohamed Hossam',
      name: 'mohamed',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer`
  String get flutter {
    return Intl.message(
      'Flutter Developer',
      name: 'flutter',
      desc: '',
      args: [],
    );
  }

  /// `Succesfully Launched`
  String get snakBarSuccess {
    return Intl.message(
      'Succesfully Launched',
      name: 'snakBarSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Error in Launched`
  String get snakBarError {
    return Intl.message(
      'Error in Launched',
      name: 'snakBarError',
      desc: '',
      args: [],
    );
  }

  /// `View More`
  String get viewLink {
    return Intl.message(
      'View More',
      name: 'viewLink',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
