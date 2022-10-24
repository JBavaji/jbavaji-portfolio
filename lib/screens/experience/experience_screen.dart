import 'package:flutter/material.dart';
import 'package:portfolio/screens/experience/widget/experience_body.dart';

import '../../widget/footer/footer_device_widget.dart';
import '../../widget/header/header_widget.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            ExperienceBody(),
            FooterDeviceWidget(),
          ],
        ),
      ),
    );
  }
}
