import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_button.dart';
import 'package:loanapp/componets/profile_componets.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const Icon(
                    Icons.person,
                    size: 100,
                  ),
                  Text(
                    user.email!,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // Elements
            const ProfileComponets(
              headLine: 'Credit Limit',
              icon: Icons.credit_score,
            ),
            const ProfileComponets(
              headLine: 'Bank cards',
              icon: Icons.backup_table_outlined,
            ),
            const ProfileComponets(
              headLine: 'Invite friends',
              icon: Icons.people_alt_outlined,
            ),
            const ProfileComponets(
              headLine: 'Account security',
              icon: Icons.lock_open_outlined,
            ),
            const ProfileComponets(
              headLine: 'Help and feedback',
              icon: Icons.feedback,
            ),
            const ProfileComponets(
              headLine: 'Online service',
              icon: Icons.lock_outline_rounded,
            ),

            // sign out button

            Mybutton(myButtonName: 'Sign out', onTap: signUserOut)
          ],
        ),
      ),
    );
  }
}
