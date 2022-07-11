import 'package:itrapp/controllers/index.dart';
import 'package:itrapp/layout/setting_layout.dart';
import 'package:itrapp/routes/app_pages.dart';
import 'package:itrapp/screens/intro/widgets/youtube_player.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../controllers/setting_controller.dart';

class IntroScreen extends StatefulWidget {

  const IntroScreen({Key? key}) : super(key: key);

  @override
  IntroScreenState createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {

  late FToast fToast;

  late String _timeString;

  IntroController controller = Get.find<IntroController>();

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
            child: Icon(Icons.bed_outlined, size: 28, color: Theme.of(context).colorScheme.secondary),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 40,
                      child: Text("Lấy thông tin bệnh nhân thành công", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      )),
                    ),
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
            child: Icon(Icons.bed_outlined, size: 28, color: Colors.white),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 40,
                      child: Text("Lấy thông tin bệnh nhân thất bại", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white
                      )),
                    ),
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
                              _showToastSuccess();
                              Get.offAndToNamed(Routes.HOME);
                            } else {
                              _showToastError();
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