import 'package:get/get.dart';
import 'package:money_exchange/controller/ratecontroller.dart';

import '../pages/home/homecontroller.dart';


class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RateController());
    Get.put(HomeController());
  }
}
