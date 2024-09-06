import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:internship/auth/CustomForgetauth.dart';
import 'package:internship/constant/colors.dart';
import 'package:internship/constant/imageasset.dart';
import 'package:internship/constant/routes.dart';
import 'package:internship/controller/auth/successsignupcontroller.dart';
import 'package:lottie/lottie.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.fourthColor,
          centerTitle: true,
          elevation: 0.0,
          title: Text("Sign In"),
        ),
        body: GetBuilder<SuccessSignUpControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                //Text(widget.value, style: TextStyle(fontSize: 16,),),
                Lottie.asset(AppImageAsset.acceptqr),
                SizedBox(
                  height: 20,
                ),
                 CustomForgetauth(
                            text: 'Sign In',
                            onPressed: () {
Get.toNamed(AppRoute.login);                            },
                          ),
              
              ],
            ),
          ),
        ));
  }
}
