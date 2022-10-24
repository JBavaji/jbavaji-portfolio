import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_config/app_colors.dart';
import '../../services/utils.dart';
import '../under_line/under_line_widget.dart';

class AppLocaleChangeIconWidget extends StatefulWidget {
  const AppLocaleChangeIconWidget({Key? key}) : super(key: key);

  @override
  State<AppLocaleChangeIconWidget> createState() => _LocaleChangerWidgetState();
}

class _LocaleChangerWidgetState extends State<AppLocaleChangeIconWidget> {
  final labelList = ['English', 'हिंदी', 'ગુજરાતી'];
  final localeList = [
    Locale('en', 'US'),
    Locale('hi', 'IN'),
    Locale('gu', 'IN')
  ];

  void _showChangeLanguage() {
    showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: true,
      builder: (_) {
        return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('alert.choose_language'.tr),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Icon(FontAwesomeIcons.xmark),
                  ),
                ),
              ],
            ),
            content: Container(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: labelList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.back();
                      Get.updateLocale(localeList[index]);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(labelList[index]),
                          localeList[index] == Get.locale
                              ? accentUnderLineWidget
                              : SizedBox(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.language),
        color: color,
        onPressed: () {
          _showChangeLanguage();
        },
      ),
    );
  }
}
