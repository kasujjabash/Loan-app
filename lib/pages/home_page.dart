import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_navbar.dart';
import 'package:loanapp/screens/history_screen.dart';
import 'package:loanapp/screens/home_screen.dart';
import 'package:loanapp/screens/loan_screen.dart';
import 'package:loanapp/screens/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //initial screen index
  int _selectedIndex = 0;

  //this is a method to update the selected index
  //when the user taps on the buttom bar
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //screen display
  final List<Widget> _pages = [
    //home screen
    const HomeScreen(),
    //Loan screen
    const LoanScreen(),
    //History screen
    const HistoryScreen(),
    // //Profile scree
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        // height: 100,
        child: BottomNavBar(
          onTabChange: (index) => navigationBottomBar(index),
        ),
      ),
    );
  }
}
