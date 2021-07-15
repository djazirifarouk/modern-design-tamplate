import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Achievements extends StatelessWidget {
  const Achievements({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Responsive.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Numbers(amount: achievement_numbers_1, title: achievement_1),
                Numbers(amount: achievement_numbers_2, title: achievement_2),
                Numbers(amount: achievement_numbers_3, title: achievement_3),
                Numbers(amount: achievement_numbers_4, title: achievement_4),
              ],
            )
          : Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Numbers(
                        amount: achievement_numbers_1, title: achievement_1),
                    Numbers(
                        amount: achievement_numbers_2, title: achievement_2),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Numbers(
                        amount: achievement_numbers_3, title: achievement_3),
                    Numbers(
                        amount: achievement_numbers_4, title: achievement_4),
                  ],
                ),
              ],
            ),
      tablet: Responsive.isTablet(context)
          ? Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Numbers(
                        amount: achievement_numbers_1, title: achievement_1),
                    Numbers(
                        amount: achievement_numbers_2, title: achievement_2),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Numbers(
                        amount: achievement_numbers_3, title: achievement_3),
                    Numbers(
                        amount: achievement_numbers_4, title: achievement_4),
                  ],
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Numbers(amount: achievement_numbers_1, title: achievement_1),
                Numbers(amount: achievement_numbers_2, title: achievement_2),
                Numbers(amount: achievement_numbers_3, title: achievement_3),
                Numbers(amount: achievement_numbers_4, title: achievement_4),
              ],
            ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Numbers(amount: achievement_numbers_1, title: achievement_1),
          Numbers(amount: achievement_numbers_2, title: achievement_2),
          Numbers(amount: achievement_numbers_3, title: achievement_3),
          Numbers(amount: achievement_numbers_4, title: achievement_4),
        ],
      ),
    );
  }
}

class Numbers extends StatelessWidget {
  const Numbers({
    Key? key,
    required this.amount,
    required this.title,
  }) : super(key: key);

  final String amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defalutPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            amount + "+",
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: primaryColor),
          ),
          SizedBox(width: defalutPadding / 2),
          Text(title, style: Theme.of(context).textTheme.subtitle2)
        ],
      ),
    );
  }
}
