// To parse this JSON data, do
//
//     final questions = questionsFromJson(jsonString);

import 'dart:convert';

Questions questionsFromJson(String str) => Questions.fromJson(json.decode(str));

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
}

class Question {
  Question({
    required this.question,
    required this.answers,
    required this.questionImageUrl,
    required this.correctAnswer,
    required this.score,
  });

  String question;
  Answers? answers;
  String? questionImageUrl;
  String correctAnswer;
  int score;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        question: json["question"] ?? 'UnKnown',
        answers:
            json["answers"] == null ? null : Answers.fromJson(json["answers"]),
        questionImageUrl: json["questionImageUrl"] ?? 'UnKnown',
        correctAnswer: json["correctAnswer"] ?? 'UnKnown',
        score: json["score"] ?? -1,
      );
}

class Answers {
  Answers(
      {required this.a,
      required this.aCorrect,
      required this.aWrong,
      required this.b,
      required this.bCorrect,
      required this.bWrong,
      required this.c,
      required this.cCorrect,
      required this.cWrong,
      required this.d,
      required this.dCorrect,
      required this.dWrong});

  String a;
  bool aCorrect;
  bool aWrong;

  String b;
  bool bCorrect;
  bool bWrong;

  String c;
  bool cCorrect;
  bool cWrong;

  String d;
  bool dCorrect;
  bool dWrong;

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
        a: json["A"] ?? 'UnKnown',
        b: json["B"] ?? 'UnKnown',
        c: json["C"] ?? 'UnKnown',
        d: json["D"] ?? 'UnKnown',
        aCorrect: json["aCorrect"] ?? false,
        bCorrect: json["bCorrect"] ?? false,
        cCorrect: json["cCorrect"] ?? false,
        dCorrect: json["dCorrect"] ?? false,
        aWrong: json["aWrong"] ?? false,
        bWrong: json["bWrong"] ?? false,
        cWrong: json["cWrong"] ?? false,
        dWrong: json["dWrong"] ?? false,
      );
  Map<String, dynamic> toJson() => {
        "A": a == null ? null : a,
        "B": b == null ? null : b,
        "C": c == null ? null : c,
        "D": d == null ? null : d,
      };
}
