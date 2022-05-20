import 'dart:async';
import 'package:flutter_stater/controllers/setting_controller.dart';
import 'package:flutter_stater/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:flutter_stater/controllers/app_controller.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  AppController appController = Get.find();

  bool _visible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 1), () {
      setState(() {
        _visible = false;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    Widget w = AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 3000),
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Theme.of(context).brightness == Brightness.dark
                  ? const AssetImage('assets/img/app-splash.png')
                  : const AssetImage('assets/img/app-splash.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: const Center(),
        ),
      ),
      onEnd: () {
        appController.ready();
        if (Get.currentRoute == Routes.SPLASH) {
          if(appController.isSettingDeviceInfo()){
            SettingController settingController = Get.find<SettingController>();
            settingController.getSettingConfig();
            Get.offAndToNamed(Routes.INTRO);
          } else {
            Get.offAndToNamed(Routes.SETTING);
          }
        }
      },
    );

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: w,
    );
  }
}