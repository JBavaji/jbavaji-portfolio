import 'package:flutter/material.dart';
import 'package:portfolio/screens/development/widget/development_body.dart';

import '../../widget/footer/footer_device_widget.dart';
import '../../widget/header/header_widget.dart';

class DevelopmentScreen extends StatelessWidget {
  const DevelopmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            DevelopmentBody(),
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
