import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //sign User Out method
  void signUserOut()  {
     FirebaseAuth.instance.signOut();
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: const Center(
        child: Text('Logged in'),
      ),
    );
  }
}
