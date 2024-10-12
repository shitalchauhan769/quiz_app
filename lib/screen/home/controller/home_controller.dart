import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shital/screen/home/model/home_model.dart';
import 'package:shital/util/helper/aip_helper.dart';

class HomeController extends GetxController {

   RxList<ResultsModel>? resultList = <ResultsModel>[].obs;
   RxList<QuizModel>quizList=<QuizModel>[].obs;
   RxInt index=0.obs;

   QuizModel? model;
   RxList? optionList = [].obs;
   RxList<QuestionModel> allData = <QuestionModel>[].obs;
   RxnString no=RxnString();
   RxInt point = 0.obs;



  Future<void> getQuizAPI() async {
    resultList!.clear();
    model = await SharedHelper.helper.quizAPI();
    resultList!.addAll(model!.resultsList!);
    for(var x in resultList!)
      {
        String? question =x.question;
        String? correct_answer =x.correct_answer;
        List? i1 =x.incorrect_answers;
        i1!.add(correct_answer);

        QuestionModel? p1 = QuestionModel(
            question: x.question,
            correct_answer: x.correct_answer,
            option: i1
        );
        allData.add(p1);
      }

  }

  void countData() {
    if(allData[index.value].correct_answer == no.value)
    {

      point++;
    }

  }
   // void quizTime()
   // {
   //
   // }
  // void optionChange(count) {
  //   optionList!.add(resultList![count].incorrect_answers![0]);
  //   optionList!.add(resultList![count].incorrect_answers![1]);
  //   optionList!.add(resultList![count].incorrect_answers![2]);
  //   optionList!.add(resultList![count].correct_answer);
  //   // optionList!.shuffle();
  // }

  // Future<void> getAPI() async {
  //   QuizModel? m1 = await SharedHelper.helper.quizAPI();
  //   model = m1;
  //   if (model != null) {
  //     List<QuestionModel> q1 = [];
  //
  //     for (ResultsModel x in model!.resultsList!) {
  //       List Option = x.incorrect_answers!;
  //       Option.add(x.correct_answer);
  //       Option.shuffle();
  //
  //       QuestionModel p1 = QuestionModel(
  //           question: x.question,
  //           correct_answer: x.correct_answer,
  //           option: Option
  //       );
  //       q1.add(p1);
  //     }
  //    quizList.value=q1;
  //   }
  // }
  //
  // void result(){
  //   if(QuestionList[index.value].correct_answer != selected ){
  //     point.value ++;
  //   }
  // }
}
