import 'package:flutter/material.dart';
import 'package:flutter_stater/layout/adaptive_layout.dart';
import 'package:flutter_stater/screens/home/widgets/bed_type_widget.dart';
import 'package:flutter_stater/screens/home/widgets/bill_service_widget.dart';
import 'package:flutter_stater/screens/home/widgets/calendar_widget.dart';
import 'package:flutter_stater/screens/home/widgets/clock_widget.dart';
import 'package:flutter_stater/screens/home/widgets/diagnosis_widget.dart';
import 'package:flutter_stater/screens/home/widgets/patient_info_widget.dart';
import 'package:flutter_stater/screens/home/widgets/service_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_stater/controllers/index.dart';

class HomeScreen extends GetView<HomeController> {

  const HomeScreen({Key? key}) : super(key: key);

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