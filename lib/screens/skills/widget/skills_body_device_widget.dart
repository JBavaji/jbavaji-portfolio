import 'package:flutter/material.dart';
import 'package:portfolio/screens/skills/model/skills_info_data.dart';
import 'package:portfolio/screens/skills/model/skills_info_model.dart';
import 'package:portfolio/screens/skills/widget/skills_item.dart';

class SkillsBodyDeviceWidget extends StatefulWidget {
  const SkillsBodyDeviceWidget({Key? key}) : super(key: key);

  @override
  State<SkillsBodyDeviceWidget> createState() => _SkillsBodyDeviceWidgetState();
}

class _SkillsBodyDeviceWidgetState extends State<SkillsBodyDeviceWidget> {
  List<SkillsInfoModel> itemData = [];

  @override
  void initState() {
    setState(() {
      itemData = skillsInfoList;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(color: Colors.grey, thickness: 1);
        },
        itemBuilder: (context, index) {
          return SkillsItem(data: itemData[index]);
        },
        itemCount: itemData.length,
      ),
    );
  }
}
