import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/home_controller.dart';
import 'package:get/get.dart';

class UserInfoWidget extends StatelessWidget {

  const UserInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<HomeController>();

    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: controller.patientInfo.sex == 1 ? Image.asset("assets/img/male.png") :  Image.asset("assets/img/fe-male.png"),
          ),
          SizedBox(
            child: Container(
              height: 60,
              margin: const EdgeInsets.only(left: 20.0),
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.patientInfo.patientName.toString(), overflow: TextOverflow.ellipsis
                      ,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Text("Mã y tế: ${controller.patientInfo.patientId.toString()}", style: TextStyle(
                    fontSize: 14,
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}