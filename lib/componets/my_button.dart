import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String myButtonName;
  void Function()? onTap;
   Mybutton({super.key, required this.myButtonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
          )),
    );
  }
}
