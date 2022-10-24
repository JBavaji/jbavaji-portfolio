import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/screens/about/widget/about_education_widget.dart';
import 'package:portfolio/screens/about/widget/about_language_widget.dart';

import '../../../services/utils.dart';

class AboutBodyDeviceWidget extends StatelessWidget {
  const AboutBodyDeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'about.ilive'.tr,
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: color),
              ),
              SizedBox(height: 10),
              EducationWidget(),
              SizedBox(height: 10),
              LanguageWidget(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
