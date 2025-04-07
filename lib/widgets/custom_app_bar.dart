import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/4.png'),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: const Color(0xff24C690).withAlpha(50),
              width: 1,
            ),
          ),
        ),
        const SizedBox(width: 19),
        Text(
          'Hello Vani\nGood Evening!',
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
