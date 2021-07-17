import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

import '../../../constants.dart';

class LaunchUrl extends StatelessWidget {
  const LaunchUrl({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  final String url;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (context, openLink) {
        return IconButton(
          onPressed: openLink,
          icon: icon,
        );
      },
    );
  }
}

class LaunchDownload1 extends StatelessWidget {
  const LaunchDownload1({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Link(
        uri: Uri.parse(url),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return TextButton(
            onPressed: openLink,
            child: FittedBox(
              child: Row(
                children: [
                  Text(
                    "Download CV",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color),
                  ),
                  SizedBox(width: defalutPadding / 2),
                  SvgPicture.asset("assets/images/download.svg"),
                ],
              ),
            ),
          );
        });
  }
}

class LaunchDownload2 extends StatelessWidget {
  const LaunchDownload2({
    Key? key,
    required this.url,
    this.fontsize = 16.0,
    this.width = 200.0,
    this.height = 50,
  }) : super(key: key);

  final String url;
  final double fontsize;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Link(
        uri: Uri.parse(url),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return Container(
            height: height,
            width: width,
            child: ElevatedButton(
              onPressed: openLink,
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: defalutPadding),
                  backgroundColor: primaryColor),
              child: Text(
                "Download CV",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: darkColor,
                    fontSize: fontsize,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        });
  }
}

class LaunchProjectLink extends StatelessWidget {
  const LaunchProjectLink({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Link(
        uri: Uri.parse(url),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return GestureDetector(
            onTap: openLink,
            child: Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ),
          );
        });
  }
}
