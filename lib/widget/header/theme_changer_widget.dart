import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/dark_theme_provider.dart';
import '../../services/utils.dart';

class AppThemeChangeIconWidget extends StatefulWidget {
  const AppThemeChangeIconWidget({Key? key}) : super(key: key);

  @override
  State<AppThemeChangeIconWidget> createState() =>
      _AppThemeChangeIconWidgetState();
}

class _AppThemeChangeIconWidgetState extends State<AppThemeChangeIconWidget> {
  @override
  Widget build(BuildContext context) {
    final darkTheme = Utils(context).getTheme;
    final color = Utils(context).textColor;
    final themeState = Provider.of<DarkThemeProvider>(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          themeState.setDarkTheme = !darkTheme;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Icon(
          darkTheme ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
          color: color,
        ),
      ),
    );
  }
}
