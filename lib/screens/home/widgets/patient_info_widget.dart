import 'package:flutter/material.dart';
import 'package:itrapp/controllers/home_controller.dart';
import 'package:get/get.dart';

class PatientInfoWidget extends GetView<HomeController> {

  const PatientInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: Container(
              height: 80,
              margin: const EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Theme.of(context).colorScheme.onSurface
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                    child: Text("Nhóm máu", style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary
                    )),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(controller.patientInfo.bloodTypes?.name ?? '', textAlign: TextAlign.center ,style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Theme.of(context).colorScheme.onSurface
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                    child: Text("Chiều cao", style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary
                    )),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(controller.patientInfo.vitality?.vitality?.first.chieuCao.toString() ?? '', textAlign: TextAlign.center ,style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.only(left: 5),
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Theme.of(context).colorScheme.onSurface
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                    child: Text("Cân nặng", style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary
                    )),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text( controller.patientInfo.vitality?.vitality?.first.canNang.toString() ?? '', textAlign: TextAlign.center ,style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}