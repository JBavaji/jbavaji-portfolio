import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../under_line/under_line_widget.dart';

class MenuNavigationListWidget extends StatelessWidget {
  String label;
  String route;

  MenuNavigationListWidget({
    Key? key,
    required this.label,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
        Get.toNamed(route);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label.tr),
            route == Get.currentRoute ? accentUnderLineWidget : SizedBox(),
          ],
        ),
      ),
    );
  }
}
