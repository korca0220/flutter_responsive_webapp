import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home/components/home_banner.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeightLight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "K+",
                ),
                label: "Subscribers",
              ),
              HeightLight(
                counter: AnimatedCounter(
                  value: 40,
                  text: "+",
                ),
                label: "Videos",
              ),
              HeightLight(
                counter: AnimatedCounter(
                  value: 30,
                  text: "+",
                ),
                label: "Github Projects",
              ),
              HeightLight(
                counter: AnimatedCounter(
                  value: 13,
                  text: "K+",
                ),
                label: "Stars",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class HeightLight extends StatelessWidget {
  const HeightLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);
  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(label ?? "", style: Theme.of(context).textTheme.subtitle2)
      ],
    );
  }
}
