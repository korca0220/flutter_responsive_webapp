import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home/components/high_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            counter: AnimatedCounter(
              value: 119,
              text: "K+",
            ),
            label: "Subscribers",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "Github Projects",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 13,
              text: "K+",
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}
