import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/screens/experience/widget/designation_item.dart';
import 'package:portfolio/screens/experience/widget/point_item.dart';
import 'package:portfolio/widget/responsive.dart';

import '../model/company_info_model.dart';

class CompanyDesignationWidget extends StatelessWidget {
  final CompanyInfoModel data;

  const CompanyDesignationWidget({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double designationWidth =
        Responsive.isMobile(context) ? width * 0.30 : width * 0.15;
    double pointsWidth =
        Responsive.isMobile(context) ? width * 0.60 : width * 0.30;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10),
          child: Container(
            width: designationWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...data.designations
                    .map(
                      (designation) => DesignationItem(
                        title: designation.title,
                        start: designation.start,
                        end: designation.end,
                      ),
                    )
                    .toList(growable: false),
              ],
            ),
          ),
        ),
        Container(
          width: pointsWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...data.points
                  .map((point) => PointItem(point: point))
                  .toList(growable: false),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}
