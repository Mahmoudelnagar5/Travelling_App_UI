import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceItem extends StatelessWidget {
  const PlaceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 160,
        height: 210,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset('assets/5.png'),
                  Container(
                    margin: const EdgeInsets.only(right: 10, bottom: 10),
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff89807A),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '\$ 750',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'City Rome',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    size: 15,
                    Icons.location_on,
                    color: Color(0xffA5ED47),
                  ),
                  Text(
                    'Italy',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xff89807A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '5 Days',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Color(0xff89807A),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
