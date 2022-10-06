import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programminghero/app/modules/questions/views/widgets/choice_options.dart';
import 'package:programminghero/app/utils/constants/styles.dart';
import 'package:programminghero/app/utils/services/image.dart';
import '../controllers/questions_controller.dart';

class QuestionsView extends GetView<QuestionsController> {
  const QuestionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
      ),
      body: controller.obx(
        (state) {
          return Obx(
            () => Column(
              children: [
                Container(
                  padding: EdgeInsets.all(rgPadding),
                  width: Get.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Questions:${controller.questionIndex.value + 1}/${state!.length}',
                        style: rgBold.copyWith(
                            color: bgColor, fontSize: titleSize),
                      ),
                      Text(
                        'Score: ${controller.score.value}',
                        style: rgBold.copyWith(
                            color: bgColor, fontSize: titleSize),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(rgPadding),
                  margin: EdgeInsets.only(top: rgPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(rgPadding)),
                  child: Column(children: [
                    Text(
                      '${state[controller.questionIndex.value].score.toString()} Points',
                      style: rgBold.copyWith(color: bgColor),
                    ),
                    ImageService.isValid(state[controller.questionIndex.value]
                            .questionImageUrl!)
                        ? Image.network(
                            state[controller.questionIndex.value]
                                .questionImageUrl!,
                            height: 200,
                            width: 200,
                          )
                        : const SizedBox(),
                    Text(
                      state[controller.questionIndex.value].question.toString(),
                      style: rgBold.copyWith(color: bgColor),
                    ),
                  ]),
                ),
                ChoiceOptions(
                    controller: controller,
                    index: controller.questionIndex.value,
                    state: state),
              ],
            ),
          );
        },
        onLoading: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
        onEmpty: Text(
          'No Question found',
          style: rgBold,
        ),
        onError: (error) => Text(
          error.toString(),
          style: rgBold,
        ),
      ),
    );
  }
}
