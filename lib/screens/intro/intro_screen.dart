import 'package:flutter_stater/controllers/index.dart';
import 'package:flutter_stater/layout/setting_layout.dart';
import 'package:flutter_stater/routes/app_pages.dart';
import 'package:flutter_stater/screens/intro/widgets/youtube_player.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/setting_controller.dart';

class IntroScreen extends GetView<IntroController> {

  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingLayout(
      childContent: Container(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 40, right: 40),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Chào mừng đến với bệnh viện đa khoa Hồng Ngọc", style: TextStyle(
                            fontSize: 35,
                            color: Theme.of(context).colorScheme.primaryVariant
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: const YoutubePLayer(),
                    )
                  )
                ],
              )
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset("assets/img/doctor.png"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 200,
                        height: 80,
                        decoration: BoxDecoration(
                            color: const Color(0xFF96FABA),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: TextButton(
                          onPressed: () async {
                            bool res = await controller.getUserInfo();
                            if(res) {
                              Get.offAndToNamed(Routes.HOME);
                            }
                          },
                          child: Text("Tiếp theo", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primaryVariant
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}