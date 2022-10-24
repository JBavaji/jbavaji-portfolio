import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app_config/app_route.dart';
import 'package:portfolio/widget/header/app_home_face_icon_widget.dart';
import 'package:portfolio/widget/header/navigation_menu_device.dart';
import 'package:portfolio/widget/header/theme_changer_widget.dart';
import 'package:portfolio/widget/locale_changer/locale_changer_widget.dart';

import '../../services/utils.dart';
import '../menu_navigation/menu_navigation_data.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  String? _getHeaderTitle() {
    var data = MenuNavigationData.homeImageSliderList
        .where((element) => element['route'] == Get.currentRoute);
    return data.first['label']?.tr;
  }

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MenuNavigationDeviceWidget(),
          Get.currentRoute == AppRouter.homeRoute
              ? FaceIconWidget()
              : Get.currentRoute == AppRouter.homeRoute
                  ? SizedBox()
                  : Text(
                      _getHeaderTitle() ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(color: color),
                    ),
          // Responsive.isDesktop(context)
          //     ? NavigationMenuDesktopWidget()
          //     : MenuNavigationDeviceWidget(),
          Spacer(flex: 1),
          AppLocaleChangeIconWidget(),
          AppThemeChangeIconWidget(),
        ],
      ),
    );
  }
}
