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
    controller.freezeAnswer.value == false
        ? state[index].answers!.toJson().forEach((key, value) {
            controller.options.add([value, key, state, index]);
          })
        : null;
    controller.freezeAnswer.value == false
        ? controller.options.shuffle()
        : null;

    return Column(children: [
      for (var i = 0; i < controller.options.length; i++)
        controller.options[i][0] == 'UnKnown'
            ? const SizedBox()
            : btnContainer(
                name: controller.options[i][0],
                borderColor:
                    colorFunction(controller.options[i][1], state, index),
                onTap: () {
                  controller.checkAnswer(
                    controller.options[i][1],
                    state[index],
                  );
                }),
    ]);
  }
}

colorFunction(String key, List<Question> state, int index) {
  if (key == 'A') {
    return state[index].handlers.aWrong
        ? Colors.red
        : (state[index].handlers.aCorrect ? Colors.green : Colors.white);
  } else if (key == 'B') {
    return state[index].handlers.bWrong
        ? Colors.red
        : (state[index].handlers.bCorrect ? Colors.green : Colors.white);
  } else if (key == 'C') {
    return state[index].handlers.cWrong
        ? Colors.red
        : (state[index].handlers.cCorrect ? Colors.green : Colors.white);
  } else if (key == 'D') {
    return state[index].handlers.dWrong
        ? Colors.red
        : (state[index].handlers.dCorrect ? Colors.green : Colors.white);
  }
}
