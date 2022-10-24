import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/utils.dart';

class HeaderTitleWidget extends StatelessWidget {
  final String name;

  const HeaderTitleWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Container(
      padding: EdgeInsets.only(
        right: 5,
        top: 10,
        bottom: 0,
        left: 20,
      ),
      child: Text(
        '$name'.tr,
        maxLines: 2,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: color,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
