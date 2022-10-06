// // To parse this JSON data, do
// //
// //     final questions = questionsFromJson(jsonString);

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

// part 'questions.freezed.dart';
// part 'questions.g.dart';

// Questions questionsFromJson(String str) => Questions.fromJson(json.decode(str));

// String questionsToJson(Questions data) => json.encode(data.toJson());

// @freezed
// abstract class Questions with _$Questions {
//   const factory Questions({
//     @Default([]) List<Question> questions,
//   }) = _Questions;

//   factory Questions.fromJson(Map<String, dynamic> json) =>
//       _$QuestionsFromJson(json);
// }

// @freezed
// abstract class Question with _$Question {
//   const factory Question({
//     @Default('UnKnown') String question,
//     @Default(Answers(a: 'UnKnown', b: 'UnKnown', c: 'UnKnown', d: 'UnKnown'))
//         Answers answers,
//     @Default('UnKnown') String questionImageUrl,
//     @Default('UnKnown') String correctAnswer,
//     @Default(0) num score,
//   }) = _Question;

//   factory Question.fromJson(Map<String, dynamic> json) =>
//       _$QuestionFromJson(json);
// }

// @freezed
// abstract class Answers with _$Answers {
//   const factory Answers({
//     @Default('UnKnown') String a,
//     @Default('UnKnown') String b,
//     @Default('UnKnown') String c,
//     @Default('UnKnown') String d,
//   }) = _Answers;

//   factory Answers.fromJson(Map<String, dynamic> json) =>
//       _$AnswersFromJson(json);
// }
