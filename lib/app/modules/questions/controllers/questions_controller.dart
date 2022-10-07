import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programminghero/app/data/mock/questions.dart';
import 'package:programminghero/app/modules/questions/models/questions.dart';
import 'package:programminghero/app/routes/app_pages.dart';
import 'package:programminghero/app/utils/constants/appstring.dart';
import 'package:programminghero/app/utils/services/initialize.dart';
import 'package:programminghero/app/utils/services/time.dart';

class QuestionsController extends GetxController
    with StateMixin<List<Question>> {
  @override
  void onInit() {
    getQuestions();
    super.onInit();
  }

  var timerClass = CountdownTimer().obs;
  Future getQuestions() async {
    final questions = questionsFromJson(mockQuestions);
    change(questions.questions, status: RxStatus.success());
    timerClass.value.startTimer(nextQuestion);
    //new question

    // var response = await httpService.getMethod(AppString.getQuiz);
    // if (response.statusCode == 200) {
    //   log(response.body);
    //   final questions = questionsFromJson(response.body);
    //   change(questions.questions, status: RxStatus.success());
    // } else {
    //   change([], status: RxStatus.error('Error'));
    // }
  }

  var questionIndex = 0.obs;
  var score = 0.obs;
  var freezeAnswer = false.obs;

  void checkAnswer(
    String key,
    Question question,
  ) {
    if (!freezeAnswer.value) {
      freezeAnswer.value = true;
      if (key == question.correctAnswer) {
        score.value = score.value + question.score;
        if (key == 'A') {
          state![questionIndex.value].answers!.aCorrect = true;
          change(state, status: RxStatus.success());
        } else if (key == 'B') {
          state![questionIndex.value].answers!.bCorrect = true;
          change(state, status: RxStatus.success());
        } else if (key == 'C') {
          state![questionIndex.value].answers!.cCorrect = true;
          change(state, status: RxStatus.success());
        } else {
          state![questionIndex.value].answers!.dCorrect = true;
          change(state, status: RxStatus.success());
        }
      } else {
        markTrue(question);
        if (key == 'A') {
          state![questionIndex.value].answers!.aWrong = true;
          change(state, status: RxStatus.success());
        } else if (key == 'B') {
          state![questionIndex.value].answers!.bWrong = true;
          change(state, status: RxStatus.success());
        } else if (key == 'C') {
          state![questionIndex.value].answers!.cWrong = true;
          change(state, status: RxStatus.success());
        } else {
          state![questionIndex.value].answers!.dWrong = true;
          change(state, status: RxStatus.success());
        }
      }
      nextQuestion();
    }
  }

  nextQuestion() {
    if (freezeAnswer.value) {
      timerClass.value.resetTimer();
      Future.delayed(const Duration(seconds: 2), () {
        if (questionIndex.value < state!.length - 1) {
          questionIndex.value++;
          freezeAnswer.value = false;
          timerClass.value.startTimer(nextQuestion);
          return;
        }
        gotoHome();
      });
    } else {
      if (questionIndex.value < state!.length - 1) {
        questionIndex.value++;
        freezeAnswer.value = false;
        timerClass.value.resetTimer();
        timerClass.value.startTimer(nextQuestion);
        return;
      }
      gotoHome();
    }
  }

  gotoHome() {
    int highestScore = sharedPreferences.getInt(AppString.highestScore) ?? 0;
    if (score.value > highestScore) {
      sharedPreferences.setInt(AppString.highestScore, score.value);
    }
    Get.offAllNamed(Routes.HOME);
    Get.defaultDialog(title: 'Doing Well', middleText: 'Your Score is $score');
  }

  markTrue(Question question) {
    var key = question.correctAnswer;
    if (key == 'A') {
      state![questionIndex.value].answers!.aCorrect = true;
      change(state, status: RxStatus.success());
    } else if (key == 'B') {
      state![questionIndex.value].answers!.bCorrect = true;
      change(state, status: RxStatus.success());
    } else if (key == 'C') {
      state![questionIndex.value].answers!.cCorrect = true;
      change(state, status: RxStatus.success());
    } else {
      state![questionIndex.value].answers!.dCorrect = true;
      change(state, status: RxStatus.success());
    }
  }

  var options = <Widget>[].obs;
}
