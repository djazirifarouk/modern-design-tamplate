import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'launch_urls.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defalutPadding),
      child: Row(
        children: [
          Spacer(),
          LaunchUrl(
            url: linkedin_url,
            icon: SvgPicture.asset("assets/images/linkedin.svg"),
          ),
          LaunchUrl(
            url: github_url,
            icon: SvgPicture.asset("assets/images/github.svg"),
          ),
          LaunchUrl(
            url: twitter_url,
            icon: SvgPicture.asset("assets/images/twitter.svg"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
