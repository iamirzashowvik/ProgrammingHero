// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Questions _$QuestionsFromJson(Map<String, dynamic> json) {
  return _Questions.fromJson(json);
}

/// @nodoc
mixin _$Questions {
  List<Question> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsCopyWith<Questions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsCopyWith<$Res> {
  factory $QuestionsCopyWith(Questions value, $Res Function(Questions) then) =
      _$QuestionsCopyWithImpl<$Res>;
  $Res call({List<Question> questions});
}

/// @nodoc
class _$QuestionsCopyWithImpl<$Res> implements $QuestionsCopyWith<$Res> {
  _$QuestionsCopyWithImpl(this._value, this._then);

  final Questions _value;
  // ignore: unused_field
  final $Res Function(Questions) _then;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionsCopyWith<$Res> implements $QuestionsCopyWith<$Res> {
  factory _$$_QuestionsCopyWith(
          _$_Questions value, $Res Function(_$_Questions) then) =
      __$$_QuestionsCopyWithImpl<$Res>;
  @override
  $Res call({List<Question> questions});
}

/// @nodoc
class __$$_QuestionsCopyWithImpl<$Res> extends _$QuestionsCopyWithImpl<$Res>
    implements _$$_QuestionsCopyWith<$Res> {
  __$$_QuestionsCopyWithImpl(
      _$_Questions _value, $Res Function(_$_Questions) _then)
      : super(_value, (v) => _then(v as _$_Questions));

  @override
  _$_Questions get _value => super._value as _$_Questions;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_$_Questions(
      questions: questions == freezed
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Questions implements _Questions {
  const _$_Questions({final List<Question> questions = const []})
      : _questions = questions;

  factory _$_Questions.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionsFromJson(json);

  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'Questions(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Questions &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionsCopyWith<_$_Questions> get copyWith =>
      __$$_QuestionsCopyWithImpl<_$_Questions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionsToJson(this);
  }
}

abstract class _Questions implements Questions {
  const factory _Questions({final List<Question> questions}) = _$_Questions;

  factory _Questions.fromJson(Map<String, dynamic> json) =
      _$_Questions.fromJson;

  @override
  List<Question> get questions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionsCopyWith<_$_Questions> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get question => throw _privateConstructorUsedError;
  Answers get answers => throw _privateConstructorUsedError;
  String get questionImageUrl => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  num get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {String question,
      Answers answers,
      String questionImageUrl,
      String correctAnswer,
      num score});

  $AnswersCopyWith<$Res> get answers;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? question = freezed,
    Object? answers = freezed,
    Object? questionImageUrl = freezed,
    Object? correctAnswer = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Answers,
      questionImageUrl: questionImageUrl == freezed
          ? _value.questionImageUrl
          : questionImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: correctAnswer == freezed
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }

  @override
  $AnswersCopyWith<$Res> get answers {
    return $AnswersCopyWith<$Res>(_value.answers, (value) {
      return _then(_value.copyWith(answers: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String question,
      Answers answers,
      String questionImageUrl,
      String correctAnswer,
      num score});

  @override
  $AnswersCopyWith<$Res> get answers;
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? question = freezed,
    Object? answers = freezed,
    Object? questionImageUrl = freezed,
    Object? correctAnswer = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_Question(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Answers,
      questionImageUrl: questionImageUrl == freezed
          ? _value.questionImageUrl
          : questionImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: correctAnswer == freezed
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {this.question = 'UnKnown',
      this.answers =
          const Answers(a: 'UnKnown', b: 'UnKnown', c: 'UnKnown', d: 'UnKnown'),
      this.questionImageUrl = 'UnKnown',
      this.correctAnswer = 'UnKnown',
      this.score = 0});

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  @JsonKey()
  final String question;
  @override
  @JsonKey()
  final Answers answers;
  @override
  @JsonKey()
  final String questionImageUrl;
  @override
  @JsonKey()
  final String correctAnswer;
  @override
  @JsonKey()
  final num score;

  @override
  String toString() {
    return 'Question(question: $question, answers: $answers, questionImageUrl: $questionImageUrl, correctAnswer: $correctAnswer, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
            const DeepCollectionEquality()
                .equals(other.questionImageUrl, questionImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.correctAnswer, correctAnswer) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(answers),
      const DeepCollectionEquality().hash(questionImageUrl),
      const DeepCollectionEquality().hash(correctAnswer),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(this);
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {final String question,
      final Answers answers,
      final String questionImageUrl,
      final String correctAnswer,
      final num score}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get question => throw _privateConstructorUsedError;
  @override
  Answers get answers => throw _privateConstructorUsedError;
  @override
  String get questionImageUrl => throw _privateConstructorUsedError;
  @override
  String get correctAnswer => throw _privateConstructorUsedError;
  @override
  num get score => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return _Answers.fromJson(json);
}

/// @nodoc
mixin _$Answers {
  String get a => throw _privateConstructorUsedError;
  String get b => throw _privateConstructorUsedError;
  String get c => throw _privateConstructorUsedError;
  String get d => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersCopyWith<Answers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersCopyWith<$Res> {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) then) =
      _$AnswersCopyWithImpl<$Res>;
  $Res call({String a, String b, String c, String d});
}

/// @nodoc
class _$AnswersCopyWithImpl<$Res> implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._value, this._then);

  final Answers _value;
  // ignore: unused_field
  final $Res Function(Answers) _then;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_value.copyWith(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: c == freezed
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: d == freezed
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$$_AnswersCopyWith(
          _$_Answers value, $Res Function(_$_Answers) then) =
      __$$_AnswersCopyWithImpl<$Res>;
  @override
  $Res call({String a, String b, String c, String d});
}

/// @nodoc
class __$$_AnswersCopyWithImpl<$Res> extends _$AnswersCopyWithImpl<$Res>
    implements _$$_AnswersCopyWith<$Res> {
  __$$_AnswersCopyWithImpl(_$_Answers _value, $Res Function(_$_Answers) _then)
      : super(_value, (v) => _then(v as _$_Answers));

  @override
  _$_Answers get _value => super._value as _$_Answers;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_$_Answers(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: c == freezed
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: d == freezed
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answers implements _Answers {
  const _$_Answers(
      {this.a = 'UnKnown',
      this.b = 'UnKnown',
      this.c = 'UnKnown',
      this.d = 'UnKnown'});

  factory _$_Answers.fromJson(Map<String, dynamic> json) =>
      _$$_AnswersFromJson(json);

  @override
  @JsonKey()
  final String a;
  @override
  @JsonKey()
  final String b;
  @override
  @JsonKey()
  final String c;
  @override
  @JsonKey()
  final String d;

  @override
  String toString() {
    return 'Answers(a: $a, b: $b, c: $c, d: $d)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answers &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality().equals(other.b, b) &&
            const DeepCollectionEquality().equals(other.c, c) &&
            const DeepCollectionEquality().equals(other.d, d));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(b),
      const DeepCollectionEquality().hash(c),
      const DeepCollectionEquality().hash(d));

  @JsonKey(ignore: true)
  @override
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      __$$_AnswersCopyWithImpl<_$_Answers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswersToJson(this);
  }
}

abstract class _Answers implements Answers {
  const factory _Answers(
      {final String a,
      final String b,
      final String c,
      final String d}) = _$_Answers;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$_Answers.fromJson;

  @override
  String get a => throw _privateConstructorUsedError;
  @override
  String get b => throw _privateConstructorUsedError;
  @override
  String get c => throw _privateConstructorUsedError;
  @override
  String get d => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      throw _privateConstructorUsedError;
}
