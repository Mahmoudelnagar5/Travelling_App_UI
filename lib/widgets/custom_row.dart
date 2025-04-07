import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: const Color(0xffB1EA47),
          ),
        ),
        Text(
          'Show more >',
          style: GoogleFonts.poppins(
            fontSize: 13,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
