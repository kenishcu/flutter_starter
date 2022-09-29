import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/controllers/home_controller.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:get/get.dart';

class DiagnosisWidget extends GetView<HomeController> {

  const DiagnosisWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).colorScheme.surface
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: '${AppLocalizations.of(context).getTranslate('positive_diagnosis')}: ',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                          children: <TextSpan>[
                            TextSpan(text: controller.patientInfo.icds?.first.serviceName ?? '', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: '${AppLocalizations.of(context).getTranslate('medical_care_level')}: ',
                          style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onBackground),
                          children: <TextSpan>[
                            TextSpan(text: controller.patientInfo.levelCare?.levelCareName ?? '', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            child: Container(
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Theme.of(context).colorScheme.surface
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        text: '${AppLocalizations.of(context).getTranslate('allergy_information')} : ',
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        text: controller.patientInfo.allergyFood.toString().replaceAll('[', '').replaceAll(']', ''),
                                        style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onBackground),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          flex: 6,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Theme.of(context).colorScheme.surface
                            ),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context).getTranslate('noted'),
                                      style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground, fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      child: const Icon(
                                        Icons.report_problem,
                                        color: Color(0xFFE46239),
                                        size: 24,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text: controller.patientInfo.attention ?? 'Chưa có thông tin',
                                    style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ),
                        ),
                        flex: 4,
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }

}