import 'package:itrapp/adapters/repository/medical_history/medical_history_repository.dart';
import 'package:itrapp/controllers/home_controller.dart';
import 'package:itrapp/models/medical_history/medical_meta_data_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/medical_history/medical_history_model.dart';
import '../models/result/result_model.dart';

class MedicalHistoryController extends GetxController {

  final GetStorage box;
  final MedicalHistoryRepository medicalHistoryRepository;

  MedicalHistoryController({
    required this.medicalHistoryRepository,
    required this.box
  });

  late DateTime from;
  late DateTime to;

  List<String> myTabs = <String>[].obs;
  RxBool initScreen = false.obs;
  RxInt selectedTab = 0.obs;

  List<MedicalMetaDataModel> inpatient = <MedicalMetaDataModel>[].obs;

  List<MedicalMetaDataModel> outpatient = <MedicalMetaDataModel>[].obs;



  Future initMedicalHistory() async {
    myTabs = ['Ngoại trú', 'Nội trú'];

    DateTime now = DateTime.now();
    from = DateTime(now.year, now.month - 2, now.day);
    to = DateTime(from.year, now.month, now.day);
    int _from = (from.millisecondsSinceEpoch / 1000).round();
    int _to = (to.millisecondsSinceEpoch / 1000).round();

    final HomeController homeController = Get.find<HomeController>();
    int? _patientId = homeController.patientInfo.patientId;
    ResultModel res = await medicalHistoryRepository.getMedicalHistory(
        _patientId!, _from, _to);
    if (res.status == true) {
        List<MedicalHistoryModel> list = [];
        MedicalHistoryModel medicalHistoryModel;
        if(res.results.length > 0 ) {
          res.results.forEach((element) => {
            medicalHistoryModel = MedicalHistoryModel.fromJson(element),
            list.add(medicalHistoryModel)
          });
        }

        if(list.isNotEmpty) {
          for (var e in list) {
            if(e.id?.inPatient == 1) {
              inpatient = [];
              e.datas?.forEach((element) {
                  element.datas?.forEach((element1) {
                    element1.datas?.forEach((element2) {
                      inpatient.add(element2);
                    });
                  });
              });
            } else {
              outpatient = [];
              e.datas?.forEach((element) {
                element.datas?.forEach((element1) {
                  element1.datas?.forEach((element2) {
                    outpatient.add(element2);
                  });
                });
              });
            }
          }
        }
    }
    initScreen.value = true;
  }

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
  }
}