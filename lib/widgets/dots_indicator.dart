import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/intro_model.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.controller,
    required this.introductionItems,
  });

  final PageController controller;
  final List<IntroModel> introductionItems;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: introductionItems.length,
      effect: JumpingDotEffect(
        dotHeight: 8,
        dotWidth: 8,
        activeDotColor: Color(
          0xffADEB47,
        ),
      ),
    );
  }
}
