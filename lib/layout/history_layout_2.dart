import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itrapp/lang/appLocalizations.dart';

import '../routes/app_pages.dart';
import '../widgets/layout/header_setting_widget.dart';
import '../widgets/layout/user_info_widget.dart';

class HistoryLayout extends StatelessWidget {

  final Widget childContent;

  const HistoryLayout({Key? key ,
    required this.childContent
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 100, top: 20, bottom: 20, right: 100),
                decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: HeaderSettingWidget(),
                      flex: 1,
                    ),
                    Expanded(
                      child: UserInfoWidget(),
                      flex: 1,
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: childContent,
              ),
              flex: 5,
            ),
            SizedBox(
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.FOOD_TREATMENT);
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                child: IconButton(
                                  padding: const EdgeInsets.all(0.0),
                                  icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.white),
                                  tooltip: 'Increase',
                                  onPressed: () {
                                    Get.toNamed(Routes.FOOD_TREATMENT);
                                  },
                                )
                            ),
                            SizedBox(
                              height: 40,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(AppLocalizations.of(context).getTranslate('back'), style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}