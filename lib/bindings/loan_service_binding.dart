import 'package:itrapp/adapters/repository/loan_service/loan_service_repository.dart';
import 'package:itrapp/controllers/loan_service_controller.dart';
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

    LoanServiceRepository loanServiceRepository = LoanServiceRepository();
    Get.put<LoanServiceController>(
      LoanServiceController(
        box: GetStorage(AppStorages.APP),
        loanServiceRepository: loanServiceRepository,
      ),
    );
  }
}