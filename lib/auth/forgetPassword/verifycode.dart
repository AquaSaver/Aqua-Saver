import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:internship/constant/colors.dart';
import 'package:internship/controller/auth/forgetppassword/verifycodecontroller.dart';
import '../CustomTitleauth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.fourthColor,
        elevation: 0.0,
        title: Text(
          "Verification Code",
          style: TextStyle(fontSize: 22, color: Colors.white,fontFamily: "PlayfairDisplay"),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomTitleauth(
              text: "Account Successfully Signed Up",
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(height: 10),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToResetPassword(verificationCode);
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
