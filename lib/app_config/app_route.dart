import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:portfolio/screens/about/about_screen.dart';
import 'package:portfolio/screens/contact/contact_screen.dart';
import 'package:portfolio/screens/development/development_screen.dart';
import 'package:portfolio/screens/experience/experience_screen.dart';
import 'package:portfolio/screens/home/home_screen.dart';

import '../screens/skills/skills_screen.dart';

class AppRouter {
  static const String homeRoute = '/home';
  static const String aboutRoute = '/about';
  static const String experienceRoute = '/experience';
  static const String developmentRoute = '/development';
  static const String skillsRoute = '/skills';
  static const String contactRoute = '/contact';

  static final initRoutes = homeRoute;

  static List<GetPage> getPages = [
    GetPage(name: homeRoute, page: () => HomeScreen()),
    GetPage(name: aboutRoute, page: () => AboutScreen()),
    GetPage(name: contactRoute, page: () => ContactScreen()),
    GetPage(name: experienceRoute, page: () => ExperienceScreen()),
    GetPage(name: developmentRoute, page: () => DevelopmentScreen()),
    GetPage(name: skillsRoute, page: () => SkillsScreen()),
  ];
}
