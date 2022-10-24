import 'package:flutter/material.dart';
import 'package:portfolio/screens/experience/widget/expansation_body_widget.dart';
import 'package:portfolio/screens/experience/widget/expansion_header_widget.dart';

import '../../../app_config/app_colors.dart';
import '../../../services/utils.dart';
import '../model/company_info_model.dart';

class CompanyInfoItem extends StatefulWidget {
  final CompanyInfoModel data;

  const CompanyInfoItem({Key? key, required this.data}) : super(key: key);

  @override
  State<CompanyInfoItem> createState() => _CompanyInfoItemState();
}

class _CompanyInfoItemState extends State<CompanyInfoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: ExpansionPanelList(
        animationDuration: const Duration(milliseconds: 500),
        expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
        elevation: 1,
        children: [
          ExpansionPanel(
            isExpanded: widget.data.expanded,
            canTapOnHeader: true,
            backgroundColor: Utils(context).getTheme
                ? AppColors.darkColor
                : AppColors.lightColor,
            headerBuilder: (context, isExpanded) {
              return HeaderTitleWidget(name: widget.data.name);
            },
            body: CompanyDesignationWidget(data: widget.data),
          ),
        ],
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            widget.data.expanded = !widget.data.expanded;
          });
        },
      ),
    );
  }
}
