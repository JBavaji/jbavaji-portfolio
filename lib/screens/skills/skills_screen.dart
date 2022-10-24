import 'package:flutter/material.dart';
import 'package:portfolio/screens/skills/widget/skills_body.dart';

import '../../widget/footer/footer_device_widget.dart';
import '../../widget/header/header_widget.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            SkillsBody(),
            FooterDeviceWidget(),
            // Responsive.isDesktop(context)
            //     ? FooterDesktopWidget()
            //     : FooterDeviceWidget(),
          ],
        ),
      ),
    );
  }
}
