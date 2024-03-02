import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_button.dart';
import 'package:loanapp/componets/my_textfield.dart';

class RegisterScreen extends StatefulWidget {
  final Function()? onTap;
  const RegisterScreen({super.key, required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final bankVerificationController = TextEditingController();

  final nationalIdentificationController = TextEditingController();

  final phoneNumberController = TextEditingController();

  //sign up a user
  void signUserUp() {
    showDialog(
        context: context,
        builder: (context) {
          return const CircularProgressIndicator();
        });

    //try creating a user
    // try{
    //   await FirebaseAuth.instance.sign
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main headline
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Create your Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Enter you BVN and other details to sign up',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // note text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                '*Use the phone numeber linked to you BVN & NIN*',
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Textfields
            MyTextfield(
                controller: bankVerificationController,
                name: "Bank Verification Number",
                obsecureText: false),

            const SizedBox(
              height: 30,
            ),

            MyTextfield(
                controller: nationalIdentificationController,
                name: "National Identification Number",
                obsecureText: false),

            const SizedBox(
              height: 30,
            ),

            MyTextfield(
                controller: phoneNumberController,
                name: "Phone Number",
                obsecureText: false),
            const SizedBox(
              height: 30,
            ),
            //submit button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Mybutton(onTap: signUserUp, myButtonName: 'Submit'),
            ),
            const SizedBox(
              height: 20,
            ),
            //signIn
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text('Already have an Account?'),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Your BVN and NIN os completely secure and we only need it for purpose of identity verification. Your BVN doesn't give us access to your financial data, Kindly confirm from your Bank",
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
