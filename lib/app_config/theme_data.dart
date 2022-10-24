import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app_config/app_colors.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    Color dark = AppColors.darkColor;
    Color light = AppColors.lightColor;
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? dark : light,
      primaryColor: const Color(0xFF755FF4),
      textTheme: GoogleFonts.gideonRomanTextTheme(
        TextTheme(
          bodyLarge: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 16,
          ),
          bodySmall: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 12,
          ),
          labelLarge: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 16,
          ),
          labelMedium: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 12,
          ),
          labelSmall: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 10,
          ),
          titleLarge: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 20,
          ),
          titleMedium: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 16,
          ),
          titleSmall: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 12,
          ),
          headlineLarge: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 20,
          ),
          headlineMedium: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 16,
          ),
          headlineSmall: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 12,
          ),
          displayLarge: TextStyle(
              color: isDarkTheme ? dark : light,
              fontSize: 24,
              fontWeight: FontWeight.w500),
          displayMedium: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 16,
          ),
          displaySmall: TextStyle(
            color: isDarkTheme ? dark : light,
            fontSize: 12,
          ),
        ),
      ),
      dialogTheme: DialogTheme(
          backgroundColor: isDarkTheme ? dark : light,
          iconColor: isDarkTheme
              ? AppColors.textFieldDarkColor
              : AppColors.textFieldLightColor,
          contentTextStyle: GoogleFonts.gideonRoman(
            textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: isDarkTheme
                    ? AppColors.textFieldDarkColor
                    : AppColors.textFieldLightColor,
                fontSize: 18),
          ),
          titleTextStyle: GoogleFonts.gideonRoman(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: isDarkTheme
                    ? AppColors.textFieldDarkColor
                    : AppColors.textFieldLightColor,
                fontSize: 18),
          )),
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: isDarkTheme ? dark : light,
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor:
          isDarkTheme ? const Color(0xFF0a0d2c) : const Color(0xFFF2FDFD),
      canvasColor: isDarkTheme ? Colors.amber : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            buttonColor: isDarkTheme ? dark : light,
          ),
      backgroundColor: isDarkTheme ? light : dark,
      appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme ? light : dark,
        foregroundColor: isDarkTheme ? light : dark,
        elevation: 0.0,
        iconTheme: IconThemeData(color: isDarkTheme ? dark : light),
        actionsIconTheme: IconThemeData(color: isDarkTheme ? dark : light),
      ),
    );
  }
}
