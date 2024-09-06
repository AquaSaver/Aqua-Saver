import 'package:flutter/material.dart';
import 'package:internship/constant/colors.dart';

class CustomForgetauth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomForgetauth({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
    ),
    height: 30,
        padding: const EdgeInsets.all(8),
        child: Text(text,style: TextStyle(fontFamily: "PlayfairDisplay",fontSize: 18),),
        color: AppColor.fourthColor,
        textColor: Colors.white, onPressed: onPressed,
      ),
    );
  }
}
