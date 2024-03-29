import 'package:flutter/material.dart';
import 'package:my_profile/Components/animated_progress_indicator.dart';

import '../../constants.dart';

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
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: AnimatedCircularProgressIndacator(
                  percentage: 0.7,
                  label: "Python",
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: AnimatedCircularProgressIndacator(
                  percentage: 0.6,
                  label: "Flutter",
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: AnimatedCircularProgressIndacator(
                  percentage: 0.6,
                  label: "ML",
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: AnimatedCircularProgressIndacator(
                  percentage: 0.7,
                  label: "Git",
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
