import 'package:get/get.dart';
import 'package:money_exchange/data/model/RateChangeModel.dart';
import 'package:money_exchange/data/repository/rate_change_repo.dart';

import '../data/repository/rate_change_repo.dart';


class RateController extends GetxController {
  RateChangeRepository rateChangeRepository = RateChangeRepository();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }

  Future<RateChangeModel?> getData() async {
    var list =  await rateChangeRepository.getData();
    
  return list;
    // RateChangeRepository.getData().then((value) {
    //   return posts.value = value;
    // });
  }
}
