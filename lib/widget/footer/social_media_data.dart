import 'package:url_launcher/url_launcher.dart';

class SocialMediaData {
  SocialMediaData._();

  static String emailURL() {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'jbavaji@gmail.com',
    );
    return params.toString();
  }

  static String phoneNo = "+919601833544";

  static String gitHubURL = "https://github.com/JBavaji";
  static String linkedInURL = "https://www.linkedin.com/in/jbavaji/";

  static String websiteURL = "https://jbavaji.github.io/";
  static String playStoreURL =
      "https://play.google.com/store/apps/details?id=com.jbavaji";
  static String appCenterURL =
      "https://apps.apple.com/in/app/com.jbavaji/id310633997";

  static launchURL(url) async {
    await launch(url);

    // if (await canLaunch(url)) {
    //
    // } else {
    //   print('Could not launch $url');
    //   throw 'Could not launch $url';
    // }
  }
}
