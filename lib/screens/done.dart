import 'package:flutter/material.dart';
import 'package:loanapp/componets/my_button.dart';

class DoneSubmission extends StatelessWidget {
  const DoneSubmission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              size: 200,
              color: Colors.blue,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Information submitted',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Your information has been sucessfully submitted, we will approve you loan request shortly',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Mybutton(
                myButtonName: 'Done',
                onTap: () => Navigator.pushNamed(context, '/home'))
          ],
        ),
      ),
    );
  }
}
