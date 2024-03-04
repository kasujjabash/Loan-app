import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_button.dart';
import 'package:loanapp/componets/my_textfield.dart';

class ApplyForLoan extends StatelessWidget {
  final purposeController = TextEditingController();
  final bankAccountController = TextEditingController();
  final loanTypeController = TextEditingController();
  final bankNameController = TextEditingController();
  final periodOfPaymentController = TextEditingController();
  final loanAmountController = TextEditingController();
  final nationalIdController = TextEditingController();

  ApplyForLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Apply for a loan"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Text(
                'Fill in the following options to establish how much you want to borrowand how long ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Loan type
            ApplyTextFields(
              hintText: 'Loan type',
              controller: loanTypeController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Amount
            ApplyTextFields(
              hintText: 'Loan amount',
              controller: loanAmountController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Period of payment
            ApplyTextFields(
              hintText: 'Period of payment',
              controller: periodOfPaymentController,
            ),
            const SizedBox(
              height: 10,
            ),
            //purpose for the loan
            ApplyTextFields(
              hintText: 'Purpose of Loan',
              controller: purposeController,
            ),
            const SizedBox(
              height: 10,
            ),
            //national id number
            ApplyTextFields(
              hintText: 'National Identification Number',
              controller: nationalIdController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank name
            ApplyTextFields(
              hintText: 'Bank name',
              controller: bankNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank information
            ApplyTextFields(
              hintText: 'Bank Account number',
              controller: bankAccountController,
            ),
            SizedBox(
              height: 15,
            ),
            //next button
            Mybutton(myButtonName: 'Next', onTap: () {})
          ],
        ),
      ),
    );
  }
}
