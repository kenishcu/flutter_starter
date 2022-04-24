import 'package:flutter_stater/controllers/loan_service_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class LoanServiceBinding extends Bindings {

  final GetStorage box;

  LoanServiceBinding({
    required this.box
  });

  @override
  void dependencies() {

    Get.put<LoanServiceController>(
      LoanServiceController(
        box: GetStorage(AppStorages.APP),
      ),
    );
  }
}