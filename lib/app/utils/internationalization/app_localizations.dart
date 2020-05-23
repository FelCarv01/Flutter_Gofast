import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_go_fast/app/utils/internationalization/app_localization_delegate.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  Map<String, String> _localizationsStings;

  Future<bool> load() async {
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizationsStings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key) {
    return _localizationsStings[key];
  }

  static AppLocalizations of(BuildContext context){
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();
}
