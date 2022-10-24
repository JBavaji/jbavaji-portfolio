import 'package:flutter/material.dart';
import 'package:portfolio/screens/development/model/project_info_model.dart';
import 'package:portfolio/screens/development/widget/app_card_item.dart';
import 'package:portfolio/widget/responsive.dart';

import '../model/projects_info_list_data.dart';

class DevelopmentBodyDeviceWidget extends StatefulWidget {
  const DevelopmentBodyDeviceWidget({Key? key}) : super(key: key);

  @override
  State<DevelopmentBodyDeviceWidget> createState() =>
      _DevelopmentBodyDeviceWidgetState();
}

class _DevelopmentBodyDeviceWidgetState
    extends State<DevelopmentBodyDeviceWidget> {
  List<ProjectInfoModel> itemData = [];

  @override
  void initState() {
    setState(() {
      itemData = projectInfoList;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int count = Responsive.isMobile(context) ? 1 : 2;
    return Expanded(
      flex: 1,
      child: GridView.builder(
        itemCount: itemData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:  count,
          childAspectRatio: 1.5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (context, index) {
          return AppCardItem(data: itemData[index]);
        },
      ),
    );
  }
}
