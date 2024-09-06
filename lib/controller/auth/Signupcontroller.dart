import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internship/auth/auth/signup.dart';
import 'package:internship/constant/routes.dart';
import 'package:internship/core/class/StatusRequest.dart';
import 'package:internship/core/class/handlingDatacontroller.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
 // CountryListController countryListController = Get.find<CountryListController>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController phonenum;

  bool isshowpassword = true;
  StatusRequest statusRequest = StatusRequest.none;

  

  SignupData signupData = SignupData(Get.find());

  List data = [];
   
showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  @override
  signUp() async {

   // phonenum.text = countryListController.selectedCountryCode + phone.text;
   // print(countryListController.selectedCountryCode);
    if (formstate.currentState!.validate()) {
     
  
      statusRequest = StatusRequest.loading;
      update();

      var response = await signupData.postdata(
          username.text, password.text, email.text, phone.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiyCodeSignUp,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
          //  statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phonenum = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    phonenum.dispose();
    super.dispose();
  }
}
