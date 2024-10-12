import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shital/screen/home/model/home_model.dart';


class SharedHelper
{
  static SharedHelper helper=SharedHelper._();
  SharedHelper._();
  Future<QuizModel?> quizAPI()
  async {
     String link="https://opentdb.com/api.php?amount=20&category=11&difficulty=easy&type=multiple";
     var response= await http.get(Uri.parse(link));
     // print("==============${response.statusCode}");
     if(response.statusCode==200)
      {
        // print("==============${response.body}");
         var json=jsonDecode(response.body);
         QuizModel model= QuizModel.mapToModel(json);
         // print("===========jsonData ${model.resultsList![1].question}");
         return model;
      }
     return null;
  }
}

