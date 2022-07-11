import 'dart:async';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:itrapp/controllers/app_controller.dart';

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

    Future.delayed(const Duration(milliseconds: 3000), () {
      initApp();
    });

  }

  initApp() async {
    appController.ready();
    print('ready to go ........');
    if (Get.currentRoute == Routes.SPLASH) {
      if(appController.isSettingDeviceInfo() == true){
        await appController.initAppSetting();
        Get.offAndToNamed(Routes.INTRO);
      } else {
        Get.offAndToNamed(Routes.SETTING);
      }
    } else {
      if(appController.isSettingDeviceInfo() == true){
        await appController.initAppSetting();
        Get.offAndToNamed(Routes.INTRO);
      } else {
        Get.offAndToNamed(Routes.SETTING);
      }
    }
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
    );

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: w,
    );
  }
}