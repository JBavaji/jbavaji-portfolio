import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app_config/assets_data.dart';
import 'package:portfolio/widget/responsive.dart';

import 'image_slider.dart';

class HomeImageBodyWidget extends StatelessWidget {
  HomeImageBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Axis scrollDirection =
        Responsive.isMobile(context) ? Axis.horizontal : Axis.vertical;
    double aspectRatio = Responsive.isMobile(context) ? 2 : 9 / 16;
    double into = 1;
    if (Responsive.isTablet(context)) {
      into = 0.35;
    } else if(Responsive.isDesktop(context)) {
      into = 0.25;
    }
    double width = MediaQuery.of(context).size.width * into;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: width,
        child: CarouselSlider.builder(
          itemCount: AppAssets.homeImageSliderList.length,
          itemBuilder: (BuildContext context, int itemIndex,
                  int pageViewIndex) =>
              ImageSliderWidget(url: AppAssets.homeImageSliderList[itemIndex]),
          options: CarouselOptions(
            aspectRatio: aspectRatio,
            enlargeCenterPage: true,
            scrollDirection: scrollDirection,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
