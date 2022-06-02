import 'package:flutter/material.dart';
import 'package:flutter_stater/routes/app_pages.dart';
import 'package:get/get.dart';

import '../widgets/layout/header_widget.dart';
import '../widgets/layout/user_info_widget.dart';

class WideHLayout extends StatefulWidget {

  final Widget childLeftContent;
  final Widget childRightContent;

  const WideHLayout({Key? key, required this.childLeftContent, required this.childRightContent}) : super(key: key);

  @override
  _WidgetHLayoutState createState() => _WidgetHLayoutState();
}

class _WidgetHLayoutState extends State<WideHLayout> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery
        .of(context)
        .size;

    Drawer _drawer(BuildContext context) {
      return Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 180,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Thông báo", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )),
                    ),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded)
                    ),
                  )
                ],
              )
            ),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 50,
                        child: Text(
                          "Xác nhận",
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      );
    }

    return Scaffold(
      key: _key,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: size.width * 1,
                height: size.height * 1,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 40, top: 20, bottom: 40, right: 40),
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: HeaderWidget(
                                onOpenDraw: () {
                                  _key.currentState!.openDrawer();
                                },
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 9,
                                        child: widget.childLeftContent
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
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
                                                    Get.toNamed(Routes.HOME);
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
                                                            },
                                                          )
                                                      ),
                                                      const SizedBox(
                                                        height: 40,
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Text("TRỞ LẠI", style: TextStyle(
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
                                        )
                                    )
                                  ],
                                ),
                              ),
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 40, right: 20),
                        child: Column(
                          children: [
                            const Expanded(
                              child: UserInfoWidget(),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                child: widget.childRightContent,
                              ),
                              flex: 5,
                            )
                          ],
                        ),
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: _drawer(context),
    );

  }
}
