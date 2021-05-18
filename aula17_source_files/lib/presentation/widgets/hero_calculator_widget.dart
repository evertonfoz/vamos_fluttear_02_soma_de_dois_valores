import 'package:flutter/material.dart';

class HeroCalculatorWidget extends StatelessWidget {
  final double height;
  final double width;

  const HeroCalculatorWidget({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'calculator',
      child: Image.asset(
        "assets/images/calculator.png",
        height: height,
        width: width,
      ),
    );
  }
}
