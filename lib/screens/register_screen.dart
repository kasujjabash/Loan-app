import 'package:firebase_auth/firebase_auth.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final bankVerificationController = TextEditingController();

  final nationalIdentificationController = TextEditingController();

  final phoneNumberController = TextEditingController();

  //sign up a user
  void signUserUp() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });

    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } else {
        ShowErrorMessage("Password don't match");
      }

      //pop the circular indicator
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the circular indicator
      // Navigator.pop(context);

//show error message
      ShowErrorMessage(e.code);
    }
    // //pop the circular indicator
    // Navigator.pop(context);
  }

//method for the wrong email
//wrong email popup

//Updatede Error message display
  void ShowErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blue,
            title: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          );
        });
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

            MyTextfield(
              obsecureText: false,
              controller: emailController,
              name: 'Email',
            ),
            const SizedBox(
              height: 30,
            ),
            MyTextfield(
              obsecureText: true,
              controller: passwordController,
              name: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),

            MyTextfield(
              obsecureText: true,
              controller: confirmPasswordController,
              name: 'Confirm Password',
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
            //Register button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Mybutton(onTap: signUserUp, myButtonName: 'Register'),
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
                      'Login Now',
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
