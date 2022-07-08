import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_stater/adapters/repository/app/app_repository.dart';
import 'package:flutter_stater/adapters/repository/loan_service/loan_service_repository.dart';
import 'package:flutter_stater/controllers/home_controller.dart';
import 'package:flutter_stater/controllers/index.dart';
import 'package:flutter_stater/controllers/setting_controller.dart';
import 'package:flutter_stater/models/app/app_setting.dart';
import 'package:flutter_stater/models/app/itrmin_config_model.dart';
import 'package:flutter_stater/models/app/setting_result_model.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:flutter_stater/models/settings/itrmin_setting_model.dart';
import 'package:flutter_stater/models/user/bed_info_model.dart';
import 'package:flutter_stater/models/user/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../adapters/repository/notification/notification_repository.dart';
import '../models/app/payment_config_model.dart';
import '../models/loan_service/loan_service_model.dart';
import '../models/notification/notification_model.dart';
import '../routes/app_pages.dart';
import '../utils/convert.dart';

enum AppState {
  loading, ready
}

class AppController extends GetxController {

  final GetStorage box;
  final AppRepository appRepository;
  final NotificationRepository notificationRepository;
  final LoanServiceRepository loanServiceRepository;
  final _state = AppState.loading.obs;
  final _settings = AppSetting().obs;

  AppController({
    required this.box,
    required this.appRepository,
    required this.notificationRepository,
    required this.loanServiceRepository
  });

  Rx<ItrminConfigModel> itrminConfigModel = ItrminConfigModel().obs;

  Rx<PaymentConfigModel> momoConfig = PaymentConfigModel().obs;

  Rx<PaymentConfigModel> vnpayConfig = PaymentConfigModel().obs;

  List<NotificationModel> notifications  = <NotificationModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future initAppSetting () async {

    // init notification
    await getNotification();

    final map = box.read("device_info") ?? {};

    if(map['branch_id'] != null && map['branch_id'] != '') {

      SettingResultModel res = await appRepository.getItrminSetting(map['branch_id'] );

      print('setting result model : ${res.toJson()}');

      if(res.status ==  true) {
        print('itrmin setting : ${res.results}');
        // store setting itrmin
        ItrminConfigModel itrmin = ItrminConfigModel.fromJson(res.results);
        itrminConfigModel.value = itrmin;
        storeSettingItrminConfig(itrmin);

        print('payment setting : ${res.payment}');
        // store momo config
        PaymentConfigModel paymentMoMo = res.payment!.momo!;
        momoConfig.value = paymentMoMo;
        storeSettingMoMoConfig(paymentMoMo);
        // store vnpay config
        PaymentConfigModel paymentVNPay = res.payment!.vnpay!;
        vnpayConfig.value = paymentVNPay;
        storeSettingMoMoConfig(paymentVNPay);
      }
    }
  }

  Future getNotification() async {
    final response = await notificationRepository.getNotification(10, 0);
    if(response.status == true) {
      List<NotificationModel> list = [];
      if (response.results != null && response.results.length > 0 ) {
        for (var element in response.results) {
          list.add(NotificationModel.fromJson(element));
        }
      }
      notifications = list;
      debugPrint('notifications: ${list.toString()}');
    }
  }

  Future reGetPatientInformation() async {
    debugPrint("Print after 300 seconds");
    final HomeController homeController = Get.find<HomeController>();
    final IntroController introController = Get.find<IntroController>();
    if(homeController.patientInfo.patientId != null) {
        ResultModel res = await introController.userRepository.getBedPatientInfo();
        if(res.status == true) {
          BedInfoModel bedInfo = BedInfoModel.fromJson(res.results);
          print('bed patient Info: ${bedInfo.patientId}');
          print('current patient Info: ${homeController.patientInfo.patientId}');
          if(bedInfo.patientId != homeController.patientInfo.patientId) {
            UserModel userModel = UserModel();
            homeController.setPatientInfo(userModel);
            Get.toNamed('/intro');
          }
        } else {
          UserModel userModel = UserModel();
          homeController.setPatientInfo(userModel);
          Get.toNamed('/intro');
        }

    }
  }

  /// *
  ///
  void storeSettingItrminConfig(ItrminConfigModel setting) {
    print("write itrmin config: ${setting.toJson()}");
    box.write("itrmin_info", setting.toJson());
  }

  void storeSettingMoMoConfig(PaymentConfigModel momo) {
    print("write momo config: ${momo.toJson()}");
    box.write("momo_info", momo.toJson());
  }

  void storeSettingVnPayConfig(PaymentConfigModel vnpay) {
    print("write vnpay config: ${vnpay.toJson()}");
    box.write("momo_info", vnpay.toJson());
  }

  AppState get state => _state.value;
  set state(value) => _state.value = value;

  AppSetting get settings => _settings.value;
  set settings(AppSetting value) => _settings.value = value;

  void ready() {
    state = AppState.ready;
  }

  bool isSettingDeviceInfo() {
    final map = box.read("device_info") ?? {};
    print('map: ${map.toString()}');
    if(map['bed_id'] != null && map['bed_id'] != 'null'){
      print('device_info: ${map.toString()}');
      return true;
    }
    return false;
  }

  ThemeMode getThemeMode() {
    return ThemeMode.light;
  }

  Future<bool> callCleanService() async {
      final res  = await loanServiceRepository.orderCleaningService();
      if(res.status == true) {
          List<LoanServiceModel> services = [];
          if(res.results != null && res.results.length > 0 ) {
            for(var element in res.results) {
              services.add(LoanServiceModel.fromJson(element));
            }
          }
          if(services.isNotEmpty) {
            List<Map<String, dynamic>> list = [];
            for (var element in services) {
              LoanServiceModel pro =
              LoanServiceModel(
                  id: element.id,
                  serviceCode: element.serviceCode,
                  serviceName: element.serviceName,
                  categoryId: element.categoryId,
                  categoryCode: element.categoryCode,
                  categoryName: element.categoryName,
                  defaultQuantity: element.defaultQuantity,
                  imageUrl: element.imageUrl,
                  status: element.status,
                  price: element.price,
                  quantity: 1,
                  note: ''
              );
              list.add(pro.toJson());
            }

            HomeController homeController = Get.find<HomeController>();
            SettingController settingController = Get.find<SettingController>();
            String? receptionQueueId = homeController.patientInfo.receptionQueueId;
            DateTime selectedDay = DateTime.now();
            int timeOrder = timeToTimeStamp(selectedDay);
            Map<String, dynamic> products = {
              "patient_id": homeController.patientInfo.patientId,
              "patient_fullname": homeController.patientInfo.patientName,
              "bed_id": settingController.selectedBed.value.bedId,
              "bed_name": settingController.selectedBed.value.bedName,
              "room_id": settingController.selectedRoom.value.roomId,
              "room_name":  settingController.selectedRoom.value.roomName,
              "reception_queue_id": receptionQueueId,
              "status": "TODO",
              "status_name": "Chưa xử lý",
              "used_at": timeOrder,
              "services": list,
            };
            ResultModel res = await loanServiceRepository.order(products);
            if(res.status == true) {
              return true;
            } else {
              return false;
            }
          } else {
            return false;
          }
      } else {
        return false;
      }
  }

}