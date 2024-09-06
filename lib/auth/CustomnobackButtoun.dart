import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomnobackButtoun extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomnobackButtoun({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialButton(
          onPressed: onPressed,child:        Text(
        text.tr,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      textColor: Colors.black,));
  }
}
