import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String myButtonName;
  void Function()? onTap;
  Mybutton({super.key, required this.myButtonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: Container(
            padding: const EdgeInsets.all(15),
            // margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                myButtonName,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            )),
      ),
    );
  }
}
