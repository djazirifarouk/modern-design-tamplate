import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:moder_design_app/controllers/MenuController.dart';
import 'package:moder_design_app/screens/main/components/launch_urls.dart';
import 'package:provider/provider.dart';
import '../../../constants.dart';
import '../../../responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: _size.width > 950
          ? 3
          : _size.width <= 950 && _size.width >= 600
              ? 2.6
              : _size.width < 600
                  ? 2
                  : 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            banner_background,
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.8)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!Responsive.isDesktop(context))
                Padding(
                  padding: const EdgeInsets.only(
                      left: defalutPadding / 4, top: defalutPadding),
                  child: IconButton(
                    onPressed: context.read<MenuController>().controlMenu,
                    icon: Icon(Icons.menu),
                    iconSize: _size.width > 1100
                        ? 30
                        : _size.width <= 1100 && _size.width > 715
                            ? 30
                            : _size.width <= 715 && _size.width > 500
                                ? 25
                                : _size.width <= 500 && _size.width > 450
                                    ? 25
                                    : 25,
                  ),
                ),
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
                            fontSize: _size.width > 1100
                                ? 50
                                : _size.width <= 1100 && _size.width > 715
                                    ? 40
                                    : _size.width <= 715 && _size.width > 500
                                        ? 30
                                        : _size.width <= 500 &&
                                                _size.width > 450
                                            ? 30
                                            : 18,
                          ),
                    ),
                    MyBuildAnimatedText(
                      text_size: _size.width >= 715
                          ? 20
                          : _size.width <= 715 && _size.width >= 500
                              ? 18
                              : _size.width <= 715 && _size.width >= 500
                                  ? 15
                                  : 11,
                    ),
                    if (Responsive.isDesktop(context))
                      SizedBox(height: defalutPadding),
                    Responsive(
                      mobile: LaunchDownload2(
                        url: cv_url,
                        width: Responsive.isMobile(context) ? 150 : 200,
                        height: Responsive.isMobile(context) ? 40 : 50,
                        fontsize: Responsive.isMobile(context) ? 14 : 16,
                      ),
                      tablet: LaunchDownload2(
                        url: cv_url,
                        width: Responsive.isTablet(context) ? 100 : 200,
                        height: Responsive.isTablet(context) ? 25 : 50,
                        fontsize: Responsive.isTablet(context) ? 16 : 16,
                      ),
                      desktop: LaunchDownload2(
                        url: cv_url,
                        width: Responsive.isDesktop(context) ? 200 : 200,
                        height: Responsive.isDesktop(context) ? 50 : 50,
                        fontsize: Responsive.isDesktop(context) ? 16 : 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
    this.text_size = 20.0,
  }) : super(key: key);

  final double text_size;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // It applies same style to all widgets
      style:
          Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: text_size),
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
