import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/category_list.dart';
import '../widgets/crystal_nav_bar.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_row.dart';
import '../widgets/place_item.dart';
import '../widgets/schedule_container.dart';
import '../widgets/text_field_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = ['Popular', 'Latest', 'All'];
    final List<Map<String, String>> travelPlaces = [
      {
        'image': 'assets/2.png',
        'name': 'City Rome',
        'location': 'Italy',
        'distance': '750',
        'days': '5 Days'
      },
      {
        'image': 'assets/2.png',
        'name': 'London Eye',
        'location': 'London',
        'distance': '780',
        'days': '5 Days'
      },
    ];

// !!  Come back 💀 !! \\
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xff303030),
      bottomNavigationBar: CyrstalNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            const SizedBox(height: 25),
            Text(
              'Explore the\nBeautiful world!',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            TextFieldRow(),
            const SizedBox(height: 23),
            CustomRow(
              title: 'Travel Places',
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategeoryList(categories: categories),
                Expanded(
                  child: SizedBox(
                    height: 210,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: travelPlaces.length,
                      itemBuilder: (context, index) {
                        return PlaceItem();
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomRow(title: 'My Schedule'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: travelPlaces.length, // Fixed: Use actual data length
                itemBuilder: (context, index) {
                  return ScheduleContainer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
