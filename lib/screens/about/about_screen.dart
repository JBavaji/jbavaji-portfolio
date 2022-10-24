import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/widget/about_body_device_widget.dart';

import '../../widget/footer/footer_device_widget.dart';
import '../../widget/header/header_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            AboutBodyDeviceWidget(),
            FooterDeviceWidget(),
          ],
        ),
      ),
    );
  }
}
