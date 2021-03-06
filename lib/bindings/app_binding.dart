import 'package:itrapp/adapters/repository/app/app_repository.dart';
import 'package:itrapp/adapters/repository/loan_service/loan_service_repository.dart';
import 'package:itrapp/controllers/app_controller.dart';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/storages/app_storages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../adapters/repository/notification/notification_repository.dart';

class AppBinding implements Bindings {

  final GetStorage box;

  AppBinding({
    required this.box,
  });

  @override
  void dependencies() {

    AppRepository appRepository = AppRepository();

    NotificationRepository notificationRepository = NotificationRepository();

    LoanServiceRepository loanServiceRepository = LoanServiceRepository();

    Get.put<AppController>(
      AppController(
          box: GetStorage(AppStorages.APP),
          appRepository: appRepository,
          notificationRepository: notificationRepository,
          loanServiceRepository: loanServiceRepository
      ),
    );
  }


}