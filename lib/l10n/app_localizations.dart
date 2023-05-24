import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  // Define your localized strings as methods here
  String? get title {
    return _localizedStrings['title'];
  }

  // Map containing localized strings
  Map<String, String> _localizedStrings = {
    'title': 'My App',
    // Add more localized strings
  };
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Define the list of supported locales
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    // Load the corresponding localization file based on the locale
    String jsonString = await rootBundle
        .loadString('l10n/app_localizations_${locale.languageCode}.json');

    // Parse the JSON file into a map of localized strings
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    Map<String, String> localizedStrings = jsonMap
        .map((key, value) => MapEntry<String, String>(key, value.toString()));

    return AppLocalizations(locale).._localizedStrings = localizedStrings;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
