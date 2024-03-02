import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/pages/home_page.dart';
import 'package:loanapp/pages/login_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //check if the user is logged in, Is the user logged in return the home screen
          //Is the user logged in
          if (snapshot.hasData) {
            return const HomePage();
          }
          //User not logged in
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
