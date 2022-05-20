import 'package:flutter_stater/adapters/repository/medical_history/medical_history_repository.dart';
import 'package:flutter_stater/controllers/index.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class MedicalHistoryBinding extends Bindings {

  final GetStorage box;

  MedicalHistoryBinding({required this.box});

  @override
  void dependencies() {

    MedicalHistoryRepository medicalHistoryRepository = MedicalHistoryRepository();

    Get.put<MedicalHistoryController>(
      MedicalHistoryController(
        box: GetStorage(AppStorages.APP),
        medicalHistoryRepository: medicalHistoryRepository,
      ),
    );
  }
}