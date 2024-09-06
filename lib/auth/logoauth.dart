import 'package:flutter/material.dart';
import 'package:internship/constant/imageasset.dart';
import 'package:lottie/lottie.dart';

class logoauth extends StatelessWidget {
  const logoauth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AppImageAsset.login, height: 300 ,width: 120    );
  }
}
