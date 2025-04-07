import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategeoryList extends StatelessWidget {
  const CategeoryList({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50, // Adjusted width to accommodate rotated text
      child: Column(
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              children: [
                if (category == 'Popular')
                  Container(
                    width: 4,
                    margin: const EdgeInsets.only(right: 8),
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xffB1EA47),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                else
                  const SizedBox(
                    width: 12,
                  ),
                RotatedBox(
                  quarterTurns: -1, // Rotate 90 degrees counterclockwise
                  child: Text(
                    category,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: category == 'Popular'
                          ? const Color(0xffB1EA47)
                          : Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
