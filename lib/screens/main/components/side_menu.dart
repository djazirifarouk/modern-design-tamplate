import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'contact_and_cv.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defalutPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: residence,
                  ),
                  AreaInfoText(
                    title: "City",
                    text: city,
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: age,
                  ),
                  Skills(),
                  SizedBox(height: defalutPadding),
                  Coding(),
                  Knowledge(),
                  ContactAndCV(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
