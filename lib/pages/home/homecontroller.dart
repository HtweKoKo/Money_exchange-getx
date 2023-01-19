import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:money_exchange/controller/ratecontroller.dart';
import 'package:money_exchange/data/model/RateChangeModel.dart';

class HomeController extends GetxController {
  RateController postController = Get.find();
  RxString _dropDownvalue = "USD".obs;
  RateChangeModel? lists;
  RxBool _isLoading = false.obs;
  DateTime? dateTime;
  var textController = TextEditingController();
  RxString editingText = "".obs;
  var result = 0.0.obs;
 

  List<String> items = [
    "USD",
    "HKD",
    "BRL",
    "RSD",
    "MYR",
    "GBP",
    "CAD",
    "SEK",
    "NOK",
    "ILS",
    "DKK",
    "AUD",
    "KWD",
    "RUB",
    "INR",
    "BND",
    "EUR",
    "ZAR",
    "NPR",
    "CNY",
    "CHF",
    "THB",
    "PKR",
    "KES",
    "EGP",
    "BDT",
    "SAR",
    "LAK",
    "IDR",
    "KHR",
    "SGD",
    "LKR",
    "NZD",
    "CZK",
    "JPY",
    "VND",
    "PHP",
    "KRW"
  ];

  get dropDownvalue => _dropDownvalue.value;
  get isloading => _isLoading.value;

  
  set setisLoading(value) => _isLoading.value = value;
  set setdropDownValue(value) => _dropDownvalue.value = value;
   
  
  @override
  void onInit() {
    super.onInit();
    getPosts();
    textController.addListener(() {
      editingText.value = textController.text;
    });
  }

  void getPosts() async {
    try {
      setisLoading = true;
      await postController.getData().then((value) {
        return lists = value;
      });
    } finally {
      setisLoading = false;
    }
  }

  selectedDropDownvalue(value) {
    setdropDownValue = value;
  }
 calculating(dollor){

 var dollornumber =dollor.replaceAll(",", "");
 var intdata = double.parse(dollornumber ?? "0");
     result.value =  int.parse(editingText.value)/intdata;
                          
   
 }
}

 


//                         var divided = controller.lists?.rates?.uSD;
//                       var aa = divided?.replaceAll(",", "");
//                       var intdata = double.parse(aa ?? "0");
                  

//                    
//                       }
