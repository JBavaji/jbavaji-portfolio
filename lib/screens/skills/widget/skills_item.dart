import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:portfolio/screens/skills/model/skills_info_model.dart';
import 'package:portfolio/screens/skills/widget/skills_wrap.dart';
import 'package:portfolio/services/utils.dart';

class SkillsItem extends StatelessWidget {
  final SkillsInfoModel data;

  const SkillsItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Utils(context).textColor;
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FaIcon(data.icon, color: color),
              SizedBox(width: 10),
              Text(
                data.name.tr,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SkillsWrap(skills: data.skills),
        ],
      ),
    );
  }
}
