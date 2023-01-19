import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
   final String BASE_URL = "http://forex.cbm.gov.mm/api/latest";

   Future<Map> getrate() async {
    Uri uri = Uri.parse("$BASE_URL");
    var respone = await http.get(uri);
    var resBody = jsonDecode(respone.body);
   
  
    
    return resBody;
  }
}
