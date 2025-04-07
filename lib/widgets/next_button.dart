import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/views/home_view.dart';

import '../models/intro_model.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.introList,
    required PageController controller,
  }) : _controller = controller;

  final List<IntroModel> introList;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        iconAlignment: IconAlignment.end,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffADEB47),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          fixedSize: Size(137, 28),
        ),
        onPressed: () {
          if (_controller.page == introList.length - 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeView(),
              ),
            );
          } else {
            _controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Next",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ));
  }
}
