import 'package:flutter_stater/adapters/repository/setting/department_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/room_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/setting_repository.dart';
import 'package:flutter_stater/controllers/setting_controller.dart';
import 'package:flutter_stater/storages/app_storages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingBinding extends Bindings {

  final GetStorage box;

  SettingBinding({required this.box});

  @override
  void dependencies() {

    DepartmentRepository departmentRepository = DepartmentRepository();
    RoomRepository roomRepository =  RoomRepository();
    SettingRepository settingRepository = SettingRepository();

    Get.put<SettingController>(
      SettingController(
        box: GetStorage(AppStorages.APP),
        departmentRepository: departmentRepository,
        roomRepository: roomRepository,
        settingRepository: settingRepository,
      ),
    );
  }

}