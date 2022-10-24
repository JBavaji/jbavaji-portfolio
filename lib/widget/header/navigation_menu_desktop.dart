import 'package:flutter/material.dart';

import '../menu_navigation/menu_navigation_data.dart';
import '../menu_navigation/menu_navigation_list.dart';

class NavigationMenuDesktopWidget extends StatelessWidget {
  const NavigationMenuDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...MenuNavigationData.homeImageSliderList
            .map(
              (e) => MenuNavigationListWidget(
                label: e['label'] ?? '',
                route: e['route'] ?? "/",
              ),
            )
            .toList(growable: false),
      ],
    );
  }
}
