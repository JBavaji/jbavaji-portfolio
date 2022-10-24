import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/widget/menu_navigation/menu_navigation_list.dart';

import '../../services/utils.dart';
import '../menu_navigation/menu_navigation_data.dart';

class MenuNavigationDeviceWidget extends StatefulWidget {
  const MenuNavigationDeviceWidget({Key? key}) : super(key: key);

  @override
  State<MenuNavigationDeviceWidget> createState() =>
      _MenuNavigationDeviceWidgetState();
}

class _MenuNavigationDeviceWidgetState
    extends State<MenuNavigationDeviceWidget> {
  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return GestureDetector(
      onTap: () {
        _openNavigation();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 50,
          child: Icon(FontAwesomeIcons.bars, size: 25, color: color),
        ),
      ),
    );
  }

  void _openNavigation() {
    showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: true,
      builder: (_) {
        return AlertDialog(
          alignment: Alignment.topCenter,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('alert.navigation'.tr),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Icon(FontAwesomeIcons.xmark),
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...MenuNavigationData.homeImageSliderList
                  .map((e) => MenuNavigationListWidget(
                      label: e['label'] ?? '', route: e['route'] ?? ''))
                  .toList(growable: false),
            ],
          ),
        );
      },
    );
  }
}
