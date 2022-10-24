import 'package:flutter/material.dart';
import 'package:portfolio/screens/experience/widget/company_info_item.dart';

import '../model/company_info_model.dart';
import '../model/experience_company_data.dart';

class ExperienceBodyDeviceWidget extends StatefulWidget {
  const ExperienceBodyDeviceWidget({Key? key}) : super(key: key);

  @override
  State<ExperienceBodyDeviceWidget> createState() =>
      _ExperienceBodyDeviceWidgetState();
}

class _ExperienceBodyDeviceWidgetState
    extends State<ExperienceBodyDeviceWidget> {
  List<CompanyInfoModel> itemData = [];

  @override
  void initState() {
    setState(() {
      itemData = companyInfoList;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CompanyInfoItem(data: itemData[index]);
        },
        itemCount: itemData.length,
      ),
    );
  }
}
