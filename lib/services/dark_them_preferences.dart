import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

class AppPreferenceManager {
  static const THEME_STATUS = "THEMESTATUS";
  static const LOCALE_VALUE = "LOCALE_VALUE";
  static const LOCALE_COUNTRY = "LOCALE_COUNTRY";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS) ?? false;
  }

  setAppLocale(String locale, String country) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(LOCALE_VALUE, locale);
    prefs.setString(LOCALE_COUNTRY, country);
  }

  Future<Locale> getAppLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String _languageCode = "en";
    String _countryCode = "US";
    if (prefs.containsKey(LOCALE_VALUE)) {
      _languageCode = prefs.getString(LOCALE_VALUE) ?? _languageCode;
      _countryCode = prefs.getString(LOCALE_COUNTRY) ?? _countryCode;
    }

    return Locale(_languageCode, _countryCode);
  }
}
