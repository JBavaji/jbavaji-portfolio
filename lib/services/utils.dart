import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app_config/app_colors.dart';
import 'package:provider/provider.dart';

import '../providers/dark_theme_provider.dart';

class Utils {
  BuildContext context;

  Utils(this.context);

  bool get getTheme => Provider.of<DarkThemeProvider>(context).getDarkTheme;

  Color get color => getTheme ? AppColors.lightColor : AppColors.darkColor;

  Color get textColor =>
      getTheme ? AppColors.textFieldDarkColor : AppColors.textFieldLightColor;

  Size get getScreenSize => MediaQuery.of(context).size;
}
