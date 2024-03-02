import 'package:flutter/material.dart';
import 'package:loanapp/screens/login_screen.dart';
import 'package:loanapp/screens/register_screen.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //intially show login page
  bool showLoginPage = true;

  //toggle between pages login and resgister
  //This means to switching or alternating between different pages or screens within a user interface.
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(onTap: togglePages);
    } else {
      return RegisterScreen(
        onTap: togglePages,
      );
    }
  }
}
