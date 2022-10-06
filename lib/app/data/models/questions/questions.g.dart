// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'questions.dart';

// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************

// _$_Questions _$$_QuestionsFromJson(Map<String, dynamic> json) => _$_Questions(
//       questions: (json['questions'] as List<dynamic>?)
//               ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
//               .toList() ??
//           const [],
//     );

// Map<String, dynamic> _$$_QuestionsToJson(_$_Questions instance) =>
//     <String, dynamic>{
//       'questions': instance.questions,
//     };

// _$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
//       question: json['question'] as String? ?? 'UnKnown',
//       answers: json['answers'] == null
//           ? const Answers(
//               a: 'UnKnown', b: 'UnKnown', c: 'UnKnown', d: 'UnKnown')
//           : Answers.fromJson(json['answers'] as Map<String, dynamic>),
//       questionImageUrl: json['questionImageUrl'] as String? ?? 'UnKnown',
//       correctAnswer: json['correctAnswer'] as String? ?? 'UnKnown',
//       score: json['score'] as num? ?? 0,
//     );

// Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
//     <String, dynamic>{
//       'question': instance.question,
//       'answers': instance.answers,
//       'questionImageUrl': instance.questionImageUrl,
//       'correctAnswer': instance.correctAnswer,
//       'score': instance.score,
//     };

// _$_Answers _$$_AnswersFromJson(Map<String, dynamic> json) => _$_Answers(
//       a: json['A'] as String? ?? 'UnKnown',
//       b: json['B'] as String? ?? 'UnKnown',
//       c: json['C'] as String? ?? 'UnKnown',
//       d: json['D'] as String? ?? 'UnKnown',
//     );

// Map<String, dynamic> _$$_AnswersToJson(_$_Answers instance) =>
//     <String, dynamic>{
//       'a': instance.a,
//       'b': instance.b,
//       'c': instance.c,
//       'd': instance.d,
//     };
