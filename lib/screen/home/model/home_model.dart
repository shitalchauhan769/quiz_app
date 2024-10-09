class QuizModel {
    int? response_code;
  List<ResultsModel>? resultsList = [];

  QuizModel(
      {this.response_code,
      this.resultsList,});

  factory QuizModel.mapToModel(Map m1) {
    List l1 = m1["results"];
    return QuizModel(response_code: m1['response_code'],resultsList: l1.map((e) => ResultsModel.MapToModel(e)).toList());
  }
    
}

class ResultsModel {
  String? type, difficulty, category, question, correct_answer;
  List<dynamic>? incorrect_answers=[];

  ResultsModel({
    this.type,
    this.difficulty,
    this.category,
    this.question,
    this.incorrect_answers,
    this.correct_answer,
  });

  factory ResultsModel.MapToModel(Map m1) {
    return ResultsModel(
        category: m1["category"],
        difficulty: m1["difficulty"],
        incorrect_answers: m1["incorrect_answers"],
        correct_answer: m1["correct_answer"],
        question: m1["question"],
        type: m1["type"]);
  }
}

class QuestionModel {
  String? correct_answer, question;
  List? option;

  QuestionModel({this.question, this.correct_answer, this.option});

}
