import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/utils.dart';

class PointItem extends StatelessWidget {
  final String point;

  const PointItem({Key? key, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      child: Text(
        '• ' + '$point'.tr,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.displayMedium?.copyWith(color: color),
      ),
    );
  }
}
