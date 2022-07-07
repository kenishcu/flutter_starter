import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/app_controller.dart';
import 'package:flutter_stater/utils/convert.dart';
import 'package:flutter_stater/widgets/layout/header_widget.dart';
import 'package:flutter_stater/widgets/layout/user_info_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class WideLayout extends StatefulWidget {

  final Widget childLeftContent;
  final Widget childRightContent;

  const WideLayout({Key? key, required this.childLeftContent, required this.childRightContent}) : super(key: key);

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {

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
            child: Icon(Icons.notifications, size: 28, color: Theme.of(context).colorScheme.secondary),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 20,
                      child: Text("Đặt đồ thành công", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      )),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text("Lễ tân đã nhận order", style: TextStyle(
                          fontSize: 12
                      )),
                    )
                  ],
                ),
              )
          ),
          Expanded(
            flex: 1,
            child: Text(_timeString),
          )
          ,
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
                  children: const [
                    SizedBox(
                      height: 20,
                      child: Text("Đặt đồ không thành công", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white
                      )),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text("Lễ tân chưa nhận order", style: TextStyle(
                          fontSize: 12,
                          color: Colors.white
                      )),
                    )
                  ],
                ),
              )
          ),
          Expanded(
            flex: 1,
            child: Text(_timeString, style: const TextStyle(
                color: Colors.white
            ),),
          )
          ,
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
                                    color: Theme.of(context).colorScheme.secondaryContainer,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Icon(Icons.notifications, size: 28, color: Theme.of(context).colorScheme.secondary),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: SizedBox(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const SizedBox(
                                                  height: 25,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(top: 5),
                                                    child: Text("Đặt thành công",
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 16
                                                        )),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 40,
                                                  child: Container(
                                                    padding: const EdgeInsets.only(top: 5),
                                                    child: Text(controller.notifications[index].title!,
                                                        maxLines: 3,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: const TextStyle(
                                                            fontSize: 12
                                                        )),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                             Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 20),
                                                  child: Text(convertFromUnixToHourString(controller.notifications[index].createdAt!), style: TextStyle(
                                                      color: Theme.of(context).colorScheme.secondary,
                                                      fontSize: 15
                                                  )),
                                                )
                                            ),
                                            Expanded(
                                              child: Padding(
                                                  padding: const EdgeInsets.only(top: 10),
                                                  child: Text(convertFromUnixToTimeString(controller.notifications[index].createdAt!), style: const TextStyle(
                                                      fontSize: 8
                                                  ))
                                              )
                                            )
                                          ],
                                        )
                                      )
                                      ,
                                    ],
                                  ),
                                ),
                              );
                            }
                        )
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Row(
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
                      onCallCleanService: () async {
                        final res = await controller.callCleanService();
                        if(res) {
                          _showToastSuccess();
                        } else {
                          _showToastError();
                        }
                      },
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: widget.childLeftContent,
                    ),
                    flex: 5,
                  )
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
      drawer: _drawer(context),
    );

  }
}