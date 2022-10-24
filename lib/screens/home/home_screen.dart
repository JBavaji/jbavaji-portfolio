import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/home_body_desktop_widget.dart';
import 'package:portfolio/widget/footer/footer_device_widget.dart';
import 'package:portfolio/widget/header/header_widget.dart';

import '../../widget/responsive.dart';
import 'widget/home_body_device_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            Responsive.isMobile(context)
                ? HomeBodyDeviceWidget()
                : HomeBodyDesktopWidget(),
            FooterDeviceWidget(),
            //  Responsive.isDesktop(context)
            //      ? FooterDesktopWidget()
            //      : FooterDeviceWidget(),
          ],
        ),
      ),
    );
  }
}
