import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/binding/initialBinding.dart';
import 'package:test_app/core/localization/changelocal.dart';
import 'package:test_app/core/localization/translation.dart';
import 'package:test_app/core/services/services.dart';
import 'package:test_app/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController myController = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      locale: myController.language,
      theme: myController.appThemeLanguage,
      initialBinding: Initialbinding(),
      // initialRoute: "/test",
      initialRoute: "/",
      getPages: routes,
    );
  }
}
