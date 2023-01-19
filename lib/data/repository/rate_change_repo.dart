import 'package:money_exchange/data/model/RateChangeModel.dart';

import '../provider/api.dart';


class RateChangeRepository {
  final RateChangeRepository? repository;
  RateChangeRepository({this.repository});

  Api api = Api();

  Future<RateChangeModel?> getData() async {
    RateChangeModel? ratechange ;
    await api.getrate().then((value) {
    
   
 ratechange = RateChangeModel.fromJson(value);
    });
    return ratechange;
    
  }
}
