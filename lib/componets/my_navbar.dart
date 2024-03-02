import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
          child: GNav(
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blue,

            //this is the on tab function to enable changes in tabs
            onTabChange: (value) => onTabChange!(value),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.attach_money,
                text: 'Loan',
              ),
              GButton(
                icon: Icons.history,
                text: 'History',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
          )),
    );
  }
}
