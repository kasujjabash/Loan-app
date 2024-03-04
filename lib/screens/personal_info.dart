import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_button.dart';
import 'package:loanapp/componets/my_textfield.dart';

class PersonalInfo extends StatelessWidget {
  final purposeController = TextEditingController();
  final bankAccountController = TextEditingController();
  final loanTypeController = TextEditingController();
  final bankNameController = TextEditingController();
  final periodOfPaymentController = TextEditingController();
  final loanAmountController = TextEditingController();
  final nationalIdController = TextEditingController();

  PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: const Text("Personal Information"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Text(
                'Please fill in the following information',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Loan type
            ApplyTextFields(
              hintText: 'First name',
              controller: loanTypeController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Amount
            ApplyTextFields(
              hintText: 'Last name',
              controller: loanAmountController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Period of payment
            ApplyTextFields(
              hintText: 'Date of birth',
              controller: periodOfPaymentController,
            ),
            const SizedBox(
              height: 10,
            ),
            //purpose for the loan
            ApplyTextFields(
              hintText: 'Gender',
              controller: purposeController,
            ),
            const SizedBox(
              height: 10,
            ),
            //national id number
            ApplyTextFields(
              hintText: 'Education',
              controller: nationalIdController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank name
            ApplyTextFields(
              hintText: 'Job status',
              controller: bankNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank name
            ApplyTextFields(
              hintText: 'Profession',
              controller: bankNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank information
            ApplyTextFields(
              hintText: 'Salary',
              controller: bankAccountController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank information
            ApplyTextFields(
              hintText: 'Marital status',
              controller: bankAccountController,
            ),
            const SizedBox(
              height: 15,
            ),
            //next button
            Mybutton(
                myButtonName: 'Next',
                onTap: () => Navigator.pushNamed(context, '/contacts')),
          ],
        ),
      ),
    );
  }
}
