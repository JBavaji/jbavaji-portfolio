import 'package:flutter/material.dart';
import 'package:portfolio/services/dark_them_preferences.dart';


class DarkThemeProvider with ChangeNotifier {
  AppPreferenceManager darkThemePreference = AppPreferenceManager();
  bool _darkTheme = false;

  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}