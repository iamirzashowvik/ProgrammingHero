// To parse this JSON data, do
//
//     final questions = questionsFromJson(jsonString);

import 'dart:convert';

Questions questionsFromJson(String str) => Questions.fromJson(json.decode(str));

String questionsToJson(Questions data) => json.encode(data.toJson());

class Questions {
  Questions({
    required this.questions,
  });

  List<Question> questions;

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
        questions: json["questions"] == null
            ? []
            : List<Question>.from(
                json["questions"].map((x) => Question.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "questions": questions == null
            ? []
            : List<dynamic>.from(questions.map((x) => x.toJson())),
      };
}

class Question {
  Question({
    required this.question,
    required this.answers,
    required this.handlers,
    required this.questionImageUrl,
    required this.correctAnswer,
    required this.score,
  });

  String question;
  Answers? answers;
  Handlers handlers;
  String questionImageUrl;
  String correctAnswer;
  int score;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        question: json["question"] == null ? 'UnKnown' : json["question"],
        answers:
            json["answers"] == null ? null : Answers.fromJson(json["answers"]),
        handlers: json["handlers"] == null
            ? Handlers(
                aCorrect: false,
                bCorrect: false,
                cCorrect: false,
                dCorrect: false,
                aWrong: false,
                bWrong: false,
                cWrong: false,
                dWrong: false,
              )
            : Handlers.fromJson(json["handlers"]),
        questionImageUrl: json["questionImageUrl"] == null
            ? 'UnKnown'
            : json["questionImageUrl"],
        correctAnswer:
            json["correctAnswer"] == null ? 'UnKnown' : json["correctAnswer"],
        score: json["score"] == null ? -1 : json["score"],
      );

  Map<String, dynamic> toJson() => {
        "question": question == null ? null : question,
        "answers": answers == null ? null : answers?.toJson(),
        "handlers": handlers == null ? null : handlers.toJson(),
        "questionImageUrl": questionImageUrl == null ? null : questionImageUrl,
        "correctAnswer": correctAnswer == null ? null : correctAnswer,
        "score": score == null ? null : score,
      };
}

class Answers {
  Answers({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  String a;
  String b;
  String c;
  String d;

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
        a: json["A"] == null ? 'UnKnown' : json["A"],
        b: json["B"] == null ? 'UnKnown' : json["B"],
        c: json["C"] == null ? 'UnKnown' : json["C"],
        d: json["D"] == null ? 'UnKnown' : json["D"],
      );

  Map<String, dynamic> toJson() => {
        "A": a == null ? 'UnKnown' : a,
        "B": b == null ? 'UnKnown' : b,
        "C": c == null ? 'UnKnown' : c,
        "D": d == null ? 'UnKnown' : d,
      };
}

class Handlers {
  Handlers({
    required this.aCorrect,
    required this.bCorrect,
    required this.cCorrect,
    required this.dCorrect,
    required this.aWrong,
    required this.bWrong,
    required this.cWrong,
    required this.dWrong,
  });

  bool aCorrect;
  bool bCorrect;
  bool cCorrect;
  bool dCorrect;
  bool aWrong;
  bool bWrong;
  bool cWrong;
  bool dWrong;

  factory Handlers.fromJson(Map<String, dynamic> json) => Handlers(
        aCorrect: json["aCorrect"] == null ? false : json["aCorrect"],
        bCorrect: json["bCorrect"] == null ? false : json["bCorrect"],
        cCorrect: json["cCorrect"] == null ? false : json["cCorrect"],
        dCorrect: json["dCorrect"] == null ? false : json["dCorrect"],
        aWrong: json["aWrong"] == null ? false : json["aWrong"],
        bWrong: json["bWrong"] == null ? false : json["bWrong"],
        cWrong: json["cWrong"] == null ? false : json["cWrong"],
        dWrong: json["dWrong"] == null ? false : json["dWrong"],
      );

  Map<String, dynamic> toJson() => {
        "aCorrect": aCorrect == null ? null : aCorrect,
        "bCorrect": bCorrect == null ? null : bCorrect,
        "cCorrect": cCorrect == null ? null : cCorrect,
        "dCorrect": dCorrect == null ? null : dCorrect,
        "aWrong": aWrong == null ? null : aWrong,
        "bWrong": bWrong == null ? null : bWrong,
        "cWrong": cWrong == null ? null : cWrong,
        "dWrong": dWrong == null ? null : dWrong,
      };
}
