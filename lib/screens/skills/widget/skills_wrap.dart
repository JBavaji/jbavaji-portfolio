import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../app_config/app_colors.dart';
import '../../../services/utils.dart';

class SkillsWrap extends StatelessWidget {
  final List<String> skills;

  const SkillsWrap({Key? key, required this.skills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Utils(context).getTheme
        ? AppColors.textFieldLightColor
        : AppColors.textFieldDarkColor;
    Color backgroundColor = Utils(context).getTheme
        ? AppColors.chipLightBackgroundColor
        : AppColors.chipDarkBackgroundColor;

    backgroundColor = Utils(context).color;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Wrap(
        spacing: 5.0,
        runSpacing: 5,
        alignment: WrapAlignment.start,
        children: [
          ...skills
              .map(
                (skill) => Chip(
                  backgroundColor: backgroundColor,
                  elevation: 3.0,
                  shadowColor: Colors.grey[60],
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                  label: Text(
                    skill.tr,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: color,
                        ),
                  ),
                ),
              )
              .toList(growable: false),
        ],
      ),
    );
  }
}
