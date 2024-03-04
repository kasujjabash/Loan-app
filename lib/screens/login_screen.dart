import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_button.dart';
import 'package:loanapp/componets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  final Function()? onTap;
  const LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {
    // Progress circular indicator
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    // Try to log a user in

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      //pop the circular indicator
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the circular indicator
      Navigator.pop(context);

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

// //method for the wrong password
// //wrong password popup
//   void wrongPasswordMessage() {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return const AlertDialog(
//             title: Text("Incorrect Password"),
//           );
//         });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main Image
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(580)),
              child: Image.asset(
                'lib/images/image_12.jpg',
                fit: BoxFit.fill,
              ),
            ),
            //welcome + sign to continue text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Welcome, ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Sign In to continoue"),
            ),
            const SizedBox(
              height: 5,
            ),
            //Text fields
            MyTextfield(
              obsecureText: false,
              controller: emailController,
              name: 'Email',
            ),

            MyTextfield(
              controller: passwordController,
              obsecureText: true,
              name: 'Password',
            ),
            const SizedBox(
              height: 3,
            ),
            //forgot password text
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            //Login button
            Mybutton(
              onTap: signUserIn,
              myButtonName: 'Login',
            ),
            const SizedBox(
              height: 15,
            ),
            //Don't have an account sign up
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
              child: Row(
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.blue[700], fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
