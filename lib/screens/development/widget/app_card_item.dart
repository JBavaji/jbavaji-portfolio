import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:portfolio/screens/development/model/project_info_model.dart';
import 'package:portfolio/widget/footer/social_media_data.dart';

import '../../../app_config/app_colors.dart';
import '../../../services/utils.dart';

class AppCardItem extends StatelessWidget {
  final ProjectInfoModel data;

  const AppCardItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).textColor;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: Utils(context).getTheme
            ? AppColors.darkColor
            : AppColors.lightColor,
        elevation: 3.0,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(data.logo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      data.title.tr,
                      textAlign: TextAlign.start,
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: color,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  Text(
                    data.description.tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: color),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.downloads.tr,
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: color,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...getUrlWidget(data.urls, color),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getUrlWidget(Map<String, String> urls, Color color) {
    List<Widget> icons = [];

    urls.forEach((key, value) {
      IconData? icon;
      if (key == "web" && value.isNotEmpty) {
        icon = FontAwesomeIcons.internetExplorer;
      } else if (key == "store" && value.isNotEmpty) {
        icon = FontAwesomeIcons.googlePlay;
      } else if (key == "center" && value.isNotEmpty) {
        icon = FontAwesomeIcons.appStore;
      }

      if (icon != null) {
        icons.add(
          IconButton(
            icon: FaIcon(icon),
            color: color,
            onPressed: () {
              SocialMediaData.launchURL(value);
            },
          ),
        );
      }
    });

    return icons;
  }
}
