import 'package:flutter_stater/adapters/repository/home/receipt_repositiry.dart';
import 'package:flutter_stater/controllers/bill_and_payment_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class BillAndPaymentBinding extends Bindings {

  final GetStorage box;

  BillAndPaymentBinding({required this.box});

  @override
  void dependencies() {

    final ReceiptRepository receiptRepository = ReceiptRepository();

    Get.put<BillAndPaymentController>(
      BillAndPaymentController(
        box: GetStorage(AppStorages.APP),
        receiptRepository: receiptRepository,
      ),
    );
  }
}