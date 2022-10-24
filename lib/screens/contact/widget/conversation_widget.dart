import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../services/utils.dart';
import '../../../widget/footer/social_media_data.dart';

class StartConversationWidget extends StatefulWidget {
  const StartConversationWidget({Key? key}) : super(key: key);

  @override
  State<StartConversationWidget> createState() =>
      _StartConversationWidgetState();
}

class _StartConversationWidgetState extends State<StartConversationWidget> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          leading: FaIcon(
            FontAwesomeIcons.message,
            color: color,
          ),
          title: Text(
            'contact.conversation'.tr,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: color),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _messageController,
          maxLines: 4,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.multiline,
          style:
              Theme.of(context).textTheme.labelMedium?.copyWith(color: color),
          decoration: InputDecoration(
            hintText: 'contact.message'.tr,
            hintStyle: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: color),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: color),
              borderRadius: BorderRadius.circular(0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: color),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.whatsapp, color: color),
          onPressed: () {
            var url =
                "https://wa.me/${SocialMediaData.phoneNo}?text=${_messageController.value.text}";
            SocialMediaData.launchURL(url);
          },
        ),
      ],
    );
  }
}
