import 'package:flutter/material.dart';
import 'package:programminghero/app/utils/constants/styles.dart';

Widget btnContainer(
    {required String name,
    required Function() onTap,
    Color borderColor = Colors.white}) {
  return GestureDetector(
    onTap: () {
      onTap();
    },
    child: Container(
      margin:
          EdgeInsets.only(top: rgPadding, left: rgPadding, right: rgPadding),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 3),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(name, style: rgBold.copyWith(color: Colors.black)),
      ),
    ),
  );
}
