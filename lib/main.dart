import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_exchange/controller/ratecontroller.dart';
import 'package:money_exchange/routes/app_page.dart';
import 'package:money_exchange/routes/app_route.dart';


import 'bindings/app_bindings.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    RateController rateController = Get.put(RateController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      initialRoute: AppRoute.HOME,
      getPages: AppPage.pages,
    );
  }
}
