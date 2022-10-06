import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programminghero/app/routes/app_pages.dart';
import 'package:programminghero/app/utils/constants/appstring.dart';
import 'package:programminghero/app/utils/constants/styles.dart';
import 'package:programminghero/app/utils/services/initialize.dart';
import 'package:programminghero/app/utils/widgets/buttons.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(rgPadding * 7),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/logo.png'),
              Text(
                'Quiz',
                style: rgBold.copyWith(fontSize: large),
              ),
              Text(
                'Highscore\n ${sharedPreferences.getInt(AppString.highestScore) ?? 0} Points',
                style: rgBold.copyWith(fontSize: titleSize),
              ),
              SizedBox(height: lgPadding),
              btnContainer(
                  name: 'Start',
                  onTap: () {
                    Get.toNamed(Routes.QUESTIONS);
                  })
            ],
          ),
        ),
      )),
    );
  }
}
