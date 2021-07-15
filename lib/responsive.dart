import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 540;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 540 ||
      MediaQuery.of(context).size.width <= 930;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 930;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 930) {
      return desktop;
    } else {
      return mobile;
    }
  }
}
