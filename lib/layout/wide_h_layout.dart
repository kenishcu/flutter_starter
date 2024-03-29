import 'package:flutter/material.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:itrapp/widgets/layout/footer_layout.dart';
import 'package:itrapp/routes/app_pages.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/app_controller.dart';
import '../utils/convert.dart';
import '../widgets/layout/header_widget.dart';
import '../widgets/layout/user_info_widget.dart';

class WideHLayout extends StatefulWidget {
  final Widget childLeftContent;
  final Widget childRightContent;

  const WideHLayout(
      {Key? key,
      required this.childLeftContent,
      required this.childRightContent})
      : super(key: key);

  @override
  _WidgetHLayoutState createState() => _WidgetHLayoutState();
}

class _WidgetHLayoutState extends State<WideHLayout> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  AppController controller = Get.find<AppController>();

  late String _timeString;

  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
    _timeString = _formatDateTime(DateTime.now());
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm').format(dateTime);
  }

  _showToastSuccess() {
    Widget toast = Container(
      height: 80,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: Icon(Icons.notifications,
                size: 28, color: Theme.of(context).colorScheme.secondary),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Text(
                          AppLocalizations.of(context)
                              .getTranslate('order_successfully'),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text( AppLocalizations.of(context)
                          .getTranslate('the_reception_has_received_the_order'),
                          style: const TextStyle(fontSize: 12)),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Text(_timeString),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP_LEFT,
      toastDuration: const Duration(seconds: 4),
    );
  }

  _showToastError() {
    Widget toast = Container(
      height: 80,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.red,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            flex: 1,
            child: Icon(Icons.notifications, size: 28, color: Colors.white),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Text(
                          AppLocalizations.of(context)
                              .getTranslate('order_not_successful'),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text(AppLocalizations.of(context)
                          .getTranslate('the_reception_has_not_received_the_order_yet'),
                          style: const TextStyle(fontSize: 12, color: Colors.white)),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Text(
              _timeString,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP_LEFT,
      toastDuration: const Duration(seconds: 4),
    );
  }

  Drawer _drawer(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                          AppLocalizations.of(context)
                              .getTranslate('notifications'),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded)),
                  )
                ],
              )),
          Expanded(
              child: Container(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: controller.notifications.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 80,
                            child: Container(
                              height: 80,
                              width: 280,
                              margin: const EdgeInsets.only(bottom: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Icon(Icons.notifications,
                                        size: 28,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: SizedBox(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.only(top: 5),
                                                child: Text(AppLocalizations.of(context).getTranslate('order_success'),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16)),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                    controller
                                                        .notifications[index]
                                                        .title!,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                        fontSize: 12)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Text(
                                                convertFromUnixToHourString(
                                                    controller
                                                        .notifications[index]
                                                        .createdAt!),
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontSize: 15)),
                                          )),
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Text(
                                                      convertFromUnixToTimeString(
                                                          controller
                                                              .notifications[
                                                                  index]
                                                              .createdAt!),
                                                      style: const TextStyle(
                                                          fontSize: 8))))
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery
    //     .of(context)
    //     .size;

    return Scaffold(
      key: _key,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 40, top: 20, bottom: 0, right: 40),
              decoration:
                  BoxDecoration(color: Theme.of(context).backgroundColor),
              child: Column(
                children: [
                  Expanded(
                    child: HeaderWidget(
                      onOpenDraw: () {
                        _key.currentState!.openDrawer();
                      },
                      onCallCleanService: () async {
                        final res = await controller.callCleanService();
                        if (res) {
                          _showToastSuccess();
                        } else {
                          _showToastError();
                        }
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
                          Expanded(flex: 9, child: widget.childLeftContent),
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
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          Get.toNamed(Routes.HOME);
                                        },
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                child: IconButton(
                                              padding:
                                                  const EdgeInsets.all(0.0),
                                              icon: const Icon(
                                                  Icons.arrow_back_ios,
                                                  size: 30,
                                                  color: Colors.white),
                                              tooltip: 'Increase',
                                              onPressed: () {},
                                            )),
                                            SizedBox(
                                              height: 40,
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    AppLocalizations.of(context)
                                                        .getTranslate('back'),
                                                    style: const TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    flex: 5,
                  ),
                  const Expanded(flex: 0, child: FooterWidget())
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 40, right: 20),
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
      drawer: _drawer(context),
    );
  }
}
