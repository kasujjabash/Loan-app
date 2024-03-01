import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/pages/home_page.dart';
import 'package:loanapp/screens/home_screen.dart';
import 'package:loanapp/screens/login_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //check if the is logged in, Is the user logged in return the home screen
          //Is the user logged in
          if (snapshot.hasData) {
            return HomePage();
          }
          //User not logged in
          else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
