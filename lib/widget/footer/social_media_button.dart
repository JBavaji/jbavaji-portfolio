import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widget/footer/social_media_data.dart';

import '../../services/utils.dart';

class SocialMediaButton extends StatefulWidget {
  String url;
  IconData icon;

  SocialMediaButton({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: IconButton(
        icon: FaIcon(widget.icon),
        color: color,
        onPressed: () {
          SocialMediaData.launchURL(widget.url);
        },
      ),
    );
  }
}
