import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleContainer extends StatelessWidget {
  const ScheduleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 330,
      height: 82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset('assets/5.png'),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Niagara Falls',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      size: 15,
                      Icons.location_on,
                      color: Color(0xffA5ED47),
                    ),
                    Text(
                      'Canada',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xff89807A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 32,
              width: 70,
              decoration: BoxDecoration(
                color: Color(0xFFA5ED47),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  'Joined',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
