import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/utils.dart';
import '../../../widget/under_line/under_line_widget.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'about.education'.tr,
          textAlign: TextAlign.justify,
          style:
              Theme.of(context).textTheme.displayLarge?.copyWith(color: color),
        ),
        accentUnderLineWidget,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'about.mca'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color, fontWeight: FontWeight.bold),
              ),
              Text(
                'about.department'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color),
              ),
              Text(
                'about.mca_year'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'about.bca'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color, fontWeight: FontWeight.bold),
              ),
              Text(
                'about.colledge'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color),
              ),
              Text(
                'about.bca_year'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
