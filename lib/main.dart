import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:portfolio/app_config/app_colors.dart';
import 'package:portfolio/app_config/theme_data.dart';
import 'package:portfolio/l10n/fallback_localization_delegate.dart';
import 'package:portfolio/providers/dark_theme_provider.dart';
import 'package:portfolio/services/utils.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app_config/app_route.dart';
import 'app_config/app_translations.dart';
import 'l10n/l10n.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return themeChangeProvider;
          },
        ),
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context, themeProvider, child) {
          return FlutterWebFrame(
            builder: (context) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'JBavaji',
                locale: Get.locale ?? Locale('en', 'US'),
                fallbackLocale: const Locale('en', 'US'),
                translations: MyTranslations(),
                localizationsDelegates: [FallbackLocalizationDelegate()],
                // <- append here
                supportedLocales: L10n.all,
                theme: Styles.themeData(themeProvider.getDarkTheme, context),
                initialRoute: AppRouter.initRoutes,
                getPages: AppRouter.getPages,
              );
            },
            maximumSize: Size(775.0, 812.0),
            enabled: true,
            backgroundColor: Utils(context).getTheme
                ? AppColors.darkColor
                : AppColors.lightColor,
          );
        },
      ),
    );
  }
}
