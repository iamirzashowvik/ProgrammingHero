import 'package:flutter/material.dart';
import 'package:programminghero/app/modules/questions/controllers/questions_controller.dart';
import 'package:programminghero/app/modules/questions/models/questions.dart';
import 'package:programminghero/app/utils/widgets/buttons.dart';

class ChoiceOptions extends StatelessWidget {
  const ChoiceOptions({
    Key? key,
    required this.controller,
    required this.index,
    required this.state,
  }) : super(key: key);

  final List<Question> state;
  final int index;
  final QuestionsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        state[index].answers!.a == 'UnKnown'
            ? const SizedBox()
            : btnContainer(
                name: state[index].answers!.a,
                borderColor: state[index].answers!.aWrong
                    ? Colors.red
                    : (state[index].answers!.aCorrect
                        ? Colors.green
                        : Colors.white),
                onTap: () {
                  controller.checkAnswer(
                    'A',
                    state[index],
                  );
                }),
        state[index].answers!.b == 'UnKnown'
            ? const SizedBox()
            : btnContainer(
                name: state[index].answers!.b,
                borderColor: state[index].answers!.bWrong
                    ? Colors.red
                    : (state[index].answers!.bCorrect
                        ? Colors.green
                        : Colors.white),
                onTap: () {
                  controller.checkAnswer(
                    'B',
                    state[index],
                  );
                }),
        state[index].answers!.c == 'UnKnown'
            ? const SizedBox()
            : btnContainer(
                name: state[index].answers!.c,
                borderColor: state[index].answers!.cWrong
                    ? Colors.red
                    : (state[index].answers!.cCorrect
                        ? Colors.green
                        : Colors.white),
                onTap: () {
                  controller.checkAnswer(
                    'C',
                    state[index],
                  );
                }),
        state[index].answers!.d == 'UnKnown'
            ? const SizedBox()
            : btnContainer(
                name: state[index].answers!.d,
                borderColor: state[index].answers!.dWrong
                    ? Colors.red
                    : (state[index].answers!.dCorrect
                        ? Colors.green
                        : Colors.white),
                onTap: () {
                  controller.checkAnswer(
                    'D',
                    state[index],
                  );
                })
      ],
    );
  }
}
