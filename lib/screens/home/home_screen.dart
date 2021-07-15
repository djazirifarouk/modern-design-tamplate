import 'package:flutter/material.dart';
import 'package:moder_design_app/constants.dart';
import 'package:moder_design_app/screens/main/main_screen.dart';
import 'components/home_banner.dart';
import 'components/numbers.dart';
import 'components/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        SizedBox(height: defalutPadding),
        Achievements(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(height: defalutPadding / 2),
            Text("My Projects", style: Theme.of(context).textTheme.headline6),
            SizedBox(height: defalutPadding),
            Projects(),
          ],
        ),
      ],
    );
  }
}
