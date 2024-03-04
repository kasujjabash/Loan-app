import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String name;
  final controller;
  final bool obsecureText;
  const MyTextfield(
      {super.key,
      required this.name,
      required this.controller,
      required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          label: Text(
            name,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

// New text fields

class ApplyTextFields extends StatelessWidget {
  final controller;
  final String hintText;
  const ApplyTextFields(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            fillColor: Colors.white70,
            filled: true,
            hintText: hintText),
      ),
    );
  }
}
