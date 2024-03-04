import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_button.dart';
import 'package:loanapp/componets/my_textfield.dart';

class ContactsInfo extends StatelessWidget {
  final purposeController = TextEditingController();
  final bankAccountController = TextEditingController();
  final loanTypeController = TextEditingController();
  final bankNameController = TextEditingController();
  final periodOfPaymentController = TextEditingController();
  final loanAmountController = TextEditingController();
  final nationalIdController = TextEditingController();

  ContactsInfo({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Text(
                'Contact 1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Loan type
            ApplyTextFields(
              hintText: 'Contact First name',
              controller: loanTypeController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Amount
            ApplyTextFields(
              hintText: 'Contact Last name',
              controller: loanAmountController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Period of payment
            ApplyTextFields(
              hintText: 'Relationship',
              controller: periodOfPaymentController,
            ),
            const SizedBox(
              height: 10,
            ),
            ApplyTextFields(
              hintText: 'National identifcation number',
              controller: bankNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Text(
                'Contact 2',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            //purpose for the loan
            ApplyTextFields(
              hintText: 'Contact First name',
              controller: purposeController,
            ),
            const SizedBox(
              height: 10,
            ),
            //national id number
            ApplyTextFields(
              hintText: 'Contact Last name',
              controller: nationalIdController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank name
            ApplyTextFields(
              hintText: 'Relationship',
              controller: bankNameController,
            ),
            const SizedBox(
              height: 10,
            ),

            //bank name
            ApplyTextFields(
              hintText: 'National identifcation number',
              controller: bankNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            //bank information
            const SizedBox(
              height: 15,
            ),
            //next button
            Mybutton(
                myButtonName: 'Submit',
                onTap: () => Navigator.pushNamed(context, '/done'))
          ],
        ),
      ),
    );
  }
}
