import 'package:itrapp/adapters/repository/home/calendar_info_repository.dart';
import 'package:itrapp/adapters/repository/home/receipt_repositiry.dart';
import 'package:itrapp/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class HomeBinding extends Bindings {

  final GetStorage box;

  HomeBinding({required this.box});

  @override
  void dependencies() {

    final ReceiptRepository receiptRepository = ReceiptRepository();
    final CalendarInfoRepository calendarInfoRepository = CalendarInfoRepository();

    Get.put<HomeController>(
      HomeController(
        box: GetStorage(AppStorages.APP),
        receiptRepository: receiptRepository,
        calendarInfoRepository: calendarInfoRepository,
      ),
    );
  }
}