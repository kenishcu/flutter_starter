import 'package:flutter_stater/routes/app_pages.dart';
import 'package:flutter_stater/theme/dart_theme.dart';
import 'package:flutter_stater/theme/light_theme.dart';
import 'package:get/get.dart';
import 'package:flutter_stater/controllers/index.dart';
import 'package:flutter/material.dart';

import 'container.dart';

class App extends GetView<AppController> {

  static init() async {
    await setup();
  }

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: "IPTV",
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor:  1.0),
            child: child!
        );
      },
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      themeMode: controller.getThemeMode(),
      defaultTransition: Transition.fadeIn,
      // Misc
      debugShowCheckedModeBanner: false,
    );
  }
}