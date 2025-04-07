import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/intro_model.dart';
import '../widgets/dots_indicator.dart';
import '../widgets/next_button.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final introList = IntroModel.introList;
    return Scaffold(
        backgroundColor: Color(0xff343434),
        body: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        introList[index].image,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Text(
                        introList[index].title,
                        style: GoogleFonts.abrilFatface(
                          fontSize: 28,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Text(
                        introList[index].description,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.white60,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: DotsIndicator(
                          controller: _controller,
                          introductionItems: introList,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: NextButton(
                            introList: introList, controller: _controller),
                      ),
                    ],
                  ),
                );
              },
              itemCount: introList.length,
            )
          ],
        ));
  }
}
