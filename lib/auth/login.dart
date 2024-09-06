import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:internship/auth/logoauth.dart';
import 'package:internship/constant/colors.dart';
import 'package:internship/controller/auth/logincontroller.dart';
import 'package:internship/core/class/handlingdataview.dart';
import 'package:internship/core/validinput.dart';

import 'CustomForgetauth.dart';
import 'CustomTextFormauth.dart';
import 'CustomTitleauth.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => loginState();
}

class loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.fourthColor,
          elevation: 0.0,
          title: Text(
            "SignIn",
            style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "PlayfairDisplay"),
          ),
        ),
        body: GetBuilder<LoginControllerImp>(
            builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          const logoauth(),
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          const CustomTitleauth(
                            text: "Welcome Back",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextFormauth(
                            valid: (val) {
                              return (validInput(val!, 'email', 5, 100));
                            },
                            iconData: Icons.email_outlined,
                            labeltext: "Email",
                            mycontroller: controller.email,
                            isNumber: false, hinttext: '', obscureText: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                         GetBuilder<LoginControllerImp>(builder: (controller)=> CustomTextFormauth(
                            valid: (val) {
                              return (validInput(val!, 'password', 5, 30));
                            },
                            obscureText: controller.isshowpassword,
                            onTapIcon: () {
                              controller.showPassword();
                            },
                            iconData: Icons.remove_red_eye,
                            labeltext: ("Password"),
                            mycontroller: controller.password,
                            isNumber: false, hinttext: '',
                          ),),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          InkWell(
                            onTap: () {
                              controller.goToForgetPassword();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom : 8.0),
                              child:  Text(
                                "Forget Password",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15),
                              ),
                            ),
                          ),
                          CustomForgetauth(
                            text: 'Login',
                            onPressed: () {
                              controller.login();
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have account?".tr,style: TextStyle(color: AppColor.fourthColor,fontSize: 18),),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.goToSignUp();
                                },
                                child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
