import 'package:flutter/material.dart';
import 'package:loanapp/componets/home_screen_componets.dart';

class LoanScreen extends StatelessWidget {
  const LoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: const Text("Loan Packages"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          //Description text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              "There are different loan packages, you can start with the lower and progressly grow",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: MyElement(
                headLine: "Business Loan", description: "0.5% Interest"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child:
                MyElement(headLine: "Auto Loan", description: "0.3% Interest"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: MyElement(
                headLine: "Home equity Loan", description: "0.3% Interest"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: MyElement(
                headLine: "credit builder Loan", description: "0.5% Interest"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: MyElement(
                headLine: "Payday Loan", description: "0.2% Interest"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child:
                MyElement(headLine: "Nona Loan", description: "0.2% Interest"),
          ),
        ],
      ),
    );
  }
}
