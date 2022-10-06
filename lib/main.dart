import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programminghero/app/utils/services/initialize.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initialize().initialize();
  runApp(
    GetMaterialApp(
      title: "Programming Hero",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
