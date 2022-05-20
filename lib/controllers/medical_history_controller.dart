import 'package:flutter_stater/adapters/repository/medical_history/medical_history_repository.dart';
import 'package:flutter_stater/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/result/result_model.dart';

class MedicalHistoryController extends GetxController {

  final GetStorage box;
  final MedicalHistoryRepository medicalHistoryRepository;

  MedicalHistoryController({
    required this.medicalHistoryRepository,
    required this.box
  });

  DateTime from = DateTime.now();
  DateTime to = DateTime.now();



  Future initMedicalHistory() async {

    DateTime fromConvert = DateTime(from.year, from.month, from.day);
    DateTime toConvert = DateTime(to.year, to.month, to.day);
    int _from = (fromConvert.millisecondsSinceEpoch / 1000).round();
    int _to = (toConvert.millisecondsSinceEpoch / 1000).round();

    final HomeController homeController = Get.find<HomeController>();
    int? _patientId = homeController.patientInfo.patientId;
    ResultModel res = await medicalHistoryRepository.getMedicalHistory(_patientId!, _from, _to);

    print('res: $res');
  }
}