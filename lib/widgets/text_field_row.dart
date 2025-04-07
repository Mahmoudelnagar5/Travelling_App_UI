import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldRow extends StatelessWidget {
  const TextFieldRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Places',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey.shade700,
                  fontSize: 14,
                ),
                prefixIcon: const Image(
                  image: AssetImage(
                    'assets/8.png',
                  ),
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
              ),
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color(0xffB1EA47),
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage('assets/7.png'),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
