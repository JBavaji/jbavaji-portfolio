import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/utils.dart';
import '../../../widget/under_line/under_line_widget.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'about.language'.tr,
          textAlign: TextAlign.justify,
          style:
              Theme.of(context).textTheme.displayLarge?.copyWith(color: color),
        ),
        accentUnderLineWidget,
        SizedBox(height: 10),
        Text(
          'about.english'.tr,
          textAlign: TextAlign.justify,
          style:
              Theme.of(context).textTheme.displayMedium?.copyWith(color: color),
        ),
        Text(
          'about.hindi'.tr,
          textAlign: TextAlign.justify,
          style:
              Theme.of(context).textTheme.displayMedium?.copyWith(color: color),
        ),
        Text(
          'about.gujarati'.tr,
          textAlign: TextAlign.justify,
          style:
              Theme.of(context).textTheme.displayMedium?.copyWith(color: color),
        ),
      ],
    );
  }
}
