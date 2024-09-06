
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/constant/colors.dart';
import 'package:internship/constant/imageasset.dart';
import 'package:internship/controller/auth/forgetppassword/forgetpasswordcontroller.dart';
import 'package:internship/core/class/handlingdataview.dart';
import 'package:internship/core/validinput.dart';

import 'package:lottie/lottie.dart';
import '../CustomForgetauth.dart';
import '../CustomTextFormauth.dart';
import '../CustomTitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.fourthColor,
        elevation: 0.0,
        title: Text(
          "Forget Password",
          style: TextStyle(fontSize: 22, color: Colors.white,fontFamily: "PlayfairDisplay"),
        ),
      ),
      body:  GetBuilder<ForgetPasswordControllerImp>(
            builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomTitleauth(
                text: "Check Email",
              ),
              const SizedBox(
                height: 20,
              ),
              Lottie.asset(AppImageAsset.checkemail,height: 400),
              SizedBox(height: 20),
              CustomTextFormauth( valid: (val){
                    return (validInput(val!, 'email', 5, 100));
              },
                iconData: Icons.email_outlined,
                labeltext: ("Email"), mycontroller: controller.email, isNumber: false, hinttext: '',
        
                ///mycontroller: ,
              ),
              SizedBox(height: 20,),
              CustomForgetauth(
                text: 'Check ',
                onPressed: () {
                  controller.checkemail();
                },
              ),
            ],
          ),
        ),
      ),
      )));
  }
}
