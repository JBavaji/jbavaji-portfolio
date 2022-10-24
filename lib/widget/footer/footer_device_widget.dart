import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widget/footer/social_media_row_widget.dart';

import '../../services/utils.dart';

class FooterDeviceWidget extends StatelessWidget {
  const FooterDeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SocialMediaRowWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'JBavaji',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color),
              ),
              Text(
                '© ${DateTime.now().year}, ${'bottom.rights'.tr}',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: color),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
