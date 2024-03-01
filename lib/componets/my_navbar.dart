import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
          child: GNav(
              gap: 8,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.blue,
              padding: const EdgeInsets.all(16),
              onTabChange: (value) => onTabChange!(value),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.money_off,
                  text: 'Loan',
                ),
                GButton(
                  icon: Icons.history,
                  text: 'History',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
