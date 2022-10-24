import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widget/under_line/under_line_widget.dart';

import '../../../services/utils.dart';

class DesignationItem extends StatelessWidget {
  final String title;
  final String start;
  final String end;

  const DesignationItem({
    Key? key,
    required this.title,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.tr,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
          ),
          accentUnderLineWidget,
          SizedBox(height: 5),
          Text(
            start.tr,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: color,
                ),
          ),
          Text(
            end.tr,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
