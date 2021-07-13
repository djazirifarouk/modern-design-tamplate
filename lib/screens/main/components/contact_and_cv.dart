import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'contact.dart';
import 'launch_urls.dart';

class ContactAndCV extends StatelessWidget {
  const ContactAndCV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        SizedBox(height: defalutPadding / 2),
        LaunchDownload1(url: cv_url),
        Contact(),
      ],
    );
  }
}
