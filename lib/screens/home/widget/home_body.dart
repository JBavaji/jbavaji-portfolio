import 'package:flutter/material.dart';
import 'package:portfolio/widget/responsive.dart';

import 'home_body_desktop_widget.dart';
import 'home_body_device_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? HomeBodyDeviceWidget()
        : HomeBodyDesktopWidget();
  }
}
