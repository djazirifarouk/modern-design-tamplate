import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_lineair_progress.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            coding_part_title,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: coding_percent_1,
          label: coding_1,
        ),
        AnimatedLinearProgressIndicator(
          percentage: coding_percent_2,
          label: coding_2,
        ),
        AnimatedLinearProgressIndicator(
          percentage: coding_percent_3,
          label: coding_3,
        ),
        AnimatedLinearProgressIndicator(
          percentage: coding_percent_4,
          label: coding_4,
        ),
      ],
    );
  }
}
