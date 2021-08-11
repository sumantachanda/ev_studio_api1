import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:ev_studio_api1/ApiModels/NewsUrlHolder.dart';

import 'news_a_pi_ev.dart';

class NewsAPiManager{
  Future<NewsAPiEv?> getNewsData() async{

    var ClintData = http.Client();
    var NewsModel = null;

    try{
   var apiResponce =  await ClintData.get(Uri.parse('https://api.sampleapis.com/futurama/characters'));
   if (apiResponce.statusCode == 200) {
     var NewsAPIString = apiResponce.body;
     var NewsJsonMap = json.decode(NewsAPIString);
     var NewsModel = NewsAPiEv.fromJson(NewsJsonMap);
     print(apiResponce.body);
   }
   }

   catch($e){

     print("crror");
      print($e);

     return NewsModel;
   }

  }
}