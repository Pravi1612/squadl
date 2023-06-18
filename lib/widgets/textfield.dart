import 'package:flutter/material.dart';

class NormalTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;

  NormalTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(strokeAlign: BorderSide.strokeAlignInside)),
        labelText: labelText,
        labelStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
