import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:internship/auth/CustomnobackButtoun.dart';

class CustomTextSignUpOrSignin extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;
  const CustomTextSignUpOrSignin(
      {super.key,
      required this.textone,
      required this.texttwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {},
          child: Text(texttwo,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.lightBlue)),
        ),
      ],
    );
  }
}
