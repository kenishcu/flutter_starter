import 'package:itrapp/adapters/repository/bill_and_payment/bill_and_payment_repository.dart';
import 'package:itrapp/controllers/bill_and_payment_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class BillAndPaymentBinding extends Bindings {

  final GetStorage box;

  BillAndPaymentBinding({required this.box});

  @override
  void dependencies() {

    final BillAndPaymentRepository billAndPaymentRepository = BillAndPaymentRepository();

    Get.put<BillAndPaymentController>(
      BillAndPaymentController(
        box: GetStorage(AppStorages.APP),
        billAndPaymentRepository: billAndPaymentRepository,
      ),
    );
  }
}