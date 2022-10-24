import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/app_config/app_route.dart';

import '../../app_config/assets_data.dart';
import '../../services/utils.dart';

class FaceIconWidget extends StatelessWidget {
  const FaceIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRouter.homeRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            image: DecorationImage(
              image: AssetImage(AppAssets.headerIconImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
