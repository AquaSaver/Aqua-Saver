import 'package:flutter/material.dart';

class CustomTitleauth extends StatelessWidget {
  final String text;
  const CustomTitleauth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "PlayfairDisplay")
    );
  }
}
