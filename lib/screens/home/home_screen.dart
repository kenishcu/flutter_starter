import 'dart:async';

import 'package:flutter/material.dart';
import 'package:itrapp/layout/adaptive_layout.dart';
import 'package:itrapp/screens/home/widgets/bed_type_widget.dart';
import 'package:itrapp/screens/home/widgets/bill_service_widget.dart';
import 'package:itrapp/screens/home/widgets/calendar_widget.dart';
import 'package:itrapp/screens/home/widgets/clock_widget.dart';
import 'package:itrapp/screens/home/widgets/diagnosis_widget.dart';
import 'package:itrapp/screens/home/widgets/patient_info_widget.dart';
import 'package:itrapp/screens/home/widgets/service_widget.dart';
import 'package:get/get.dart';
import 'package:itrapp/controllers/index.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final AppController appController = Get.find<AppController>();

  @override
  void initState() {
    super.initState();
    reGetPatientInfo();
  }

  reGetPatientInfo() {
    Timer.periodic(const Duration(seconds: 300), (timer) async {
      await appController.reGetPatientInformation();
    });
  }

  Widget childLeftContent() {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Row(
              children: const [
                Expanded(
                    flex: 4,
                    child: BedTypeWidget()
                ),
                Expanded(
                  child: SizedBox(
                    child: DiagnosisWidget(),
                  ),
                  flex: 6,
                )
              ],
            )),
        Expanded(
            flex: 7,
            child: Row(
              children: const [
                Expanded(
                  child: ServiceWidget(),
                  flex: 2,
                ),
                Expanded(
                  child: BillServiceWidget(),
                  flex: 3,
                ),
              ],
            )),
      ],
    );
  }

  Widget childRightContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        PatientInfoWidget(),
        ClockWidget(),
        CalendarWidget(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        childLeftContent: childLeftContent(),
        childRightContent: childRightContent()
    );
  }
}