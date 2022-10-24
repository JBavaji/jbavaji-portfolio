import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact/widget/contact_body_device_widget.dart';

import '../../widget/footer/footer_device_widget.dart';
import '../../widget/header/header_widget.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            ContactBodyDeviceWidget(),
            FooterDeviceWidget(),
          ],
        ),
      ),
    );
  }
}
