import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:moder_design_app/screens/main/components/launch_urls.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            banner_background,
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.70)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defalutPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  banner_title,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                MyBuildAnimatedText(),
                SizedBox(height: defalutPadding),
                LaunchDownload2(url: cv_url)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // It applies same style to all widgets
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          Text("I build "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              i_build_1,
              speed: Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              i_build_2,
              speed: Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              i_build_3,
              speed: Duration(milliseconds: 60),
            ),
          ]),
        ],
      ),
    );
  }
}
