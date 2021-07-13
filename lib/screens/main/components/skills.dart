import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defalutPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: skill_percent_1,
                label: skill_1,
              ),
            ),
            SizedBox(width: defalutPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: skill_percent_2,
                label: skill_2,
              ),
            ),
            SizedBox(width: defalutPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: skill_percent_3,
                label: skill_3,
              ),
            ),
          ],
        )
      ],
    );
  }
}
