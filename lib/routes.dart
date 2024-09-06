// ignore_for_file: unused_import



import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:internship/Splash.dart';
import 'package:internship/auth/Signup.dart';

import 'package:internship/auth/forgetPassword/forgetpassword.dart';
import 'package:internship/auth/forgetPassword/verifycodeSignup.dart';
import 'package:internship/auth/login.dart';
import 'package:internship/auth/forgetPassword/resetPassword.dart';
import 'package:internship/auth/forgetPassword/verifycode.dart';
import 'package:internship/auth/forgetPassword/successresetpassword.dart';
import 'package:internship/auth/successsignup.dart';
import 'package:internship/constant/routes.dart';


List<GetPage<dynamic>>? routes = [
//  Auth
  GetPage(name: AppRoute.login, page: () => const login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
   GetPage(name: AppRoute.splash, page: () => const Homee()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
    GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerifyCodeSignUP()),
 
 
];

