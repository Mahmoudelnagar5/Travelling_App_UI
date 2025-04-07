import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';

class CyrstalNavBar extends StatelessWidget {
  const CyrstalNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CrystalNavigationBar(
      currentIndex: 0,
      itemPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      marginR: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      selectedItemColor: const Color(0xffB1EA47),
      unselectedItemColor: Colors.white,
      backgroundColor: Color(0xff333333),
      outlineBorderColor: Color(0xff333333),
      items: [
        CrystalNavigationBarItem(
          icon: Icons.explore,
          unselectedIcon: Icons.explore_outlined,
          selectedColor: const Color(0xffB1EA47),
          unselectedColor: Colors.white,
        ),
        CrystalNavigationBarItem(
          icon: Icons.notifications,
          unselectedIcon: Icons.notifications,
          selectedColor: Colors.red,
        ),
        CrystalNavigationBarItem(
          icon: Icons.bookmark,
          unselectedIcon: Icons.bookmark,
          selectedColor: Colors.white,
        ),
        CrystalNavigationBarItem(
          icon: Icons.person,
          unselectedIcon: Icons.person,
          selectedColor: Colors.white,
        ),
      ],
      onTap: (index) {
        // Handle navigation tap
      },
    );
  }
}
