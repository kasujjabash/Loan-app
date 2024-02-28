import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String myButtonName;
  const Mybutton({super.key, required this.myButtonName});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        // margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130),
            child: Text(
              myButtonName,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
