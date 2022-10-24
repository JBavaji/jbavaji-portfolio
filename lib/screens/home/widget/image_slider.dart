import 'package:flutter/material.dart';

class ImageSliderWidget extends StatelessWidget {
  String url;

  ImageSliderWidget({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
