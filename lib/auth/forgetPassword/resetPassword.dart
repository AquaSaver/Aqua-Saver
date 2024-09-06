// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/constant/colors.dart';
import 'package:internship/constant/imageasset.dart';
import 'package:internship/controller/auth/forgetppassword/resetpasswordcontroller.dart';
import 'package:internship/core/class/handlingdataview.dart';
import 'package:internship/core/validinput.dart';
import 'package:lottie/lottie.dart';
import '../CustomForgetauth.dart';
import '../CustomTextFormauth.dart';
import '../CustomTitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.fourthColor,
        elevation: 0.0,
        title: Text(
          "Reset Password",
          style: TextStyle(fontSize: 22, color: Colors.white,fontFamily: "PlayfairDisplay"),
        ),
      ),
      body: 
      GetBuilder<ResetPasswordControllerImp>(builder: (controller) =>  HandlingDataView(statusRequest: controller.statusRequest, widget: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              const CustomTitleauth(
                text: "New Password",
              ),
              // const SizedBox(
              //   height: 10,
              // ),
                Lottie.asset(AppImageAsset.newpassword,height: 320),
             // SizedBox(height: 10),
              CustomTextFormauth( valid: (val){
                    return (validInput(val!, 'password', 5, 100));
              },onTapIcon: () {
                              controller.showPassword();
                            },
                iconData: Icons.remove_red_eye,
                labeltext: ("Password"), mycontroller: controller.password, isNumber: false, hinttext: '',
        obscureText: controller.isshowpassword,
                ///mycontroller: ,
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormauth( valid: (val){
                  return (validInput(val!, 'password', 5, 100));
              }, onTapIcon: () {
                              controller.showPassword();
                            },
                iconData: Icons.remove_red_eye,
                labeltext: ("Confirmation"), mycontroller: controller.repassword, isNumber: false, hinttext: '',
        obscureText: controller.isshowpassword,
                ///mycontroller: ,
              ),
              SizedBox(
                height: 5,
              ),
              CustomForgetauth(
                text: 'Save ',
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
              ),
            ],
          ),
        ),
      ),) ,)
      
    );
  }
}
