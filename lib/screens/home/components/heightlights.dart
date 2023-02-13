import 'package:flutter/material.dart';
import 'package:my_profile/responsive.dart';

import '../../../constants.dart';
import 'animated_counter.dart';
import 'height_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 2500,
                        text: "+",
                      ),
                      label: "Linkedin",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: HeightLight(
                        counter: AnimatedCounter(
                          value: 90,
                          text: "+",
                        ),
                        label: "Github",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Github Projects",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: HeightLight(
                        counter: AnimatedCounter(
                          value: 5,
                          text: "+",
                        ),
                        label: "kaggle projects",
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightLight(
                  counter: AnimatedCounter(
                    value: 2500,
                    text: "+",
                  ),
                  label: "Linkedin",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 90,
                    text: "+",
                  ),
                  label: "Github",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "Github Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: "+",
                  ),
                  label: "kaggle projects",
                ),
              ],
            ),
    );
  }
}
