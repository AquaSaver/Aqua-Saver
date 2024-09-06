// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/core/class/crud.dart';
import 'package:internship/core/class/myservices.dart';
import 'package:internship/routes.dart';
import 'auth/login.dart';
import 'linkApi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MyServices());
    Get.put(Crud());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: login(),
      getPages: routes,
    );
  }
}
