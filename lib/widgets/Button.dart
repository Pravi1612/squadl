import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;

  const Button({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
