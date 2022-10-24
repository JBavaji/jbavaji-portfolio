import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/intro_widget.dart';
import 'package:portfolio/screens/home/widget/schedule_widget.dart';
import 'package:portfolio/widget/responsive.dart';

class HomeContentBodyWidget extends StatelessWidget {
  const HomeContentBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double into = 0.25;
    if (Responsive.isMobile(context)) {
      into = 1;
    } else if (Responsive.isTablet(context)) {
      into = 0.25;
    }
    double width = MediaQuery.of(context).size.width * into;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        width: width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntroWidget(),
            SizedBox(height: 25),
            ScheduleWidget(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
