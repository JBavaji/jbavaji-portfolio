import 'package:flutter/material.dart';

import 'home_content_body_widget.dart';
import 'home_image_body_widget.dart';

class HomeBodyDeviceWidget extends StatelessWidget {
  const HomeBodyDeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HomeImageBodyWidget(),
            HomeContentBodyWidget(),
          ],
        ),
      ),
    );
  }
}
