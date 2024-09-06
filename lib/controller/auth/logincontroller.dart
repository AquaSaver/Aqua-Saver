import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/auth/auth/login.dart';
import 'package:internship/constant/routes.dart';
import 'package:internship/core/class/StatusRequest.dart';
import 'package:internship/core/class/handlingDatacontroller.dart';
import 'package:internship/core/class/myservices.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find()); 

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  MyServices myServices = Get.find();
  bool isshowpassword = true;
  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
           myServices.sharedPreferences.setInt("id", response['data']['users_id']) ;
          myServices.sharedPreferences.setString("username", response['data']['users_name']) ;
          myServices.sharedPreferences.setString("email", response['data']['users_email']) ;
          myServices.sharedPreferences.setString("phone", response['data']['users_phone']) ;
          myServices.sharedPreferences.setString("step","2") ;
          Get.offNamed(AppRoute.splash);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
         // statusRequest = StatusRequest.failure;

        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
   //myServices.sharedPreferences.setString("step", "1") ; 
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}