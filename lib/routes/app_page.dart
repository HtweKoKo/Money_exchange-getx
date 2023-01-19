import 'package:get/get.dart';

import '../pages/home/home.dart';
import 'app_route.dart';

class AppPage {
  static final pages = [
    GetPage(name: AppRoute.HOME, page: ()=>  Home()),
  ];
}
