import 'package:flutter/material.dart';
import 'package:loanapp/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loanapp/pages/home_page.dart';
import 'package:loanapp/screens/apply_loan.dart';
import 'package:loanapp/screens/contacts_screen.dart';
import 'package:loanapp/screens/done.dart';
import 'package:loanapp/screens/loan_screen.dart';
import 'package:loanapp/screens/personal_info.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/loanScreen': (context) => const LoanScreen(),
        '/apply': (context) => ApplyForLoan(),
        '/personal': (context) => PersonalInfo(),
        '/contacts': (context) => ContactsInfo(),
        '/home':(context) => const HomePage(),
        '/done': (context) => const DoneSubmission(),
        //'/home': (context) => HomeScreen(),
        // '/profile': (context) => ProfileScreen(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthPage();
  }
}
