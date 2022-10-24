import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/screens/contact/widget/conversation_widget.dart';
import 'package:portfolio/widget/footer/social_media_data.dart';

import '../../../services/utils.dart';

class ContactBodyDeviceWidget extends StatelessWidget {
  const ContactBodyDeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.map,
                  color: color,
                ),
                title: Text(
                  'contact.address'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: color),
                ),
              ),
              ListTile(
                onTap: () {
                  var url =
                      Uri.parse("tel:${SocialMediaData.phoneNo}").toString();
                  SocialMediaData.launchURL(url);
                },
                leading: FaIcon(
                  FontAwesomeIcons.phone,
                  color: color,
                ),
                title: Text(
                  'contact.call'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: color),
                ),
              ),
              StartConversationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
