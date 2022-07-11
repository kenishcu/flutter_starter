import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/layout/setting_layout.dart';
import 'package:itrapp/models/settings/department_model.dart';
import 'package:itrapp/models/settings/room_model.dart';
import 'package:itrapp/screens/setting/widgets/selection_bed.dart';
import 'package:itrapp/screens/setting/widgets/selection_branch.dart';
import 'package:itrapp/screens/setting/widgets/selection_department.dart';
import 'package:itrapp/screens/setting/widgets/selection_room.dart';
import 'package:get/get.dart';

class SettingScreen extends GetView<SettingController> {

  const SettingScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    DepartmentModel? selectedDepartment;

    Widget settingTitle() {
      return const SizedBox(
        height: 60,
        child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text("Cài đặt chung", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            )),
        ),
      );
    }

    Widget ipInput() {
      return SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
             const SizedBox(
              height: 50,
              width: 200,
              child: Align(
                alignment: Alignment.center,
                child: Text("Địa chỉ IP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),
                ),
              ),
            ),
             SizedBox(
               height: 50,
               width: size.width - 500,
               child: TextFormField(
                 controller: controller.ipAddress.value,
                 decoration:  InputDecoration(
                   contentPadding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                   filled: true,
                   fillColor: Theme.of(context).backgroundColor,
                   border: const OutlineInputBorder(),
                 ),
                 onSaved: (value) {
                   controller.ipAddress.value.text = value!;
                 },
                 validator: (value) {
                   return controller.validateIpAddress(value!);
                 },
               ),
             )
          ],
        ),
      );
    }

    Widget macInput() {
      return SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(
              height: 50,
              width: 200,
              child: Align(
                alignment: Alignment.center,
                child: Text("Địa chỉ MAC",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: size.width - 500,
              child: TextFormField(
                controller: controller.macAddress.value,
                decoration:  InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                  filled: true,
                  fillColor: Theme.of(context).backgroundColor,
                  border: const OutlineInputBorder(),
                ),
                  onSaved: (value) {
                    controller.macAddress.value.text = value!;
                  },
                  validator: (value) {
                    return controller.validateMacAddress(value!);
                  }
                  ),
            )
          ],
        ),
      );
    }

    Widget confirmButton() {
      return SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 60,
              width: 150,
              margin: const EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryVariant,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(
                onPressed: () {
                  controller.checkLogin();
                  controller.submitSetting();
                },
                child: const Text("Cài đặt", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white
                )),
              ),
            )
          ],
        ),
      );
    }

    return SettingLayout(
        childContent: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor
          ),
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 100, right: 100, top: 50, bottom: 50),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: controller.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    settingTitle(),
                    const SelectionBranch(),
                    const SelectionDepartment(),
                    const SelectionRoom(),
                    const SelectionBed(),
                    ipInput(),
                    macInput(),
                    confirmButton(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

}