import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/utils.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'home.iam'.tr,
          style: Theme.of(context)
              .textTheme
              .displayLarge
              ?.copyWith(color: color),
        ),
        SizedBox(height: 10),
        Text(
          'about.beendecade'.tr,
          textAlign: TextAlign.justify,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: color),
        ),
        SizedBox(height: 10),
        Text(
          'home.preferred'.tr,
          textAlign: TextAlign.justify,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: color),
        ),
      ],
    );
  }
}
