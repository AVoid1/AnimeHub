import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({required this.title1, required this.title2 , required this.value});

  final String title1;
  final String title2;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        obscureText: value,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: title1,
          labelText: title2,
        ),
      ),
    );
  }
}
