import 'package:itrapp/adapters/repository/setting/branch_repository.dart';
import 'package:itrapp/adapters/repository/setting/department_repository.dart';
import 'package:itrapp/adapters/repository/setting/room_repository.dart';
import 'package:itrapp/adapters/repository/setting/setting_repository.dart';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/storages/app_storages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingBinding extends Bindings {

  final GetStorage box;

  SettingBinding({required this.box});

  @override
  void dependencies() {

    BranchRepository branchRepository = BranchRepository();
    DepartmentRepository departmentRepository = DepartmentRepository();
    RoomRepository roomRepository =  RoomRepository();
    SettingRepository settingRepository = SettingRepository();


    Get.put<SettingController>(
      SettingController(
        box: GetStorage(AppStorages.APP),
        departmentRepository: departmentRepository,
        roomRepository: roomRepository,
        settingRepository: settingRepository,
        branchRepository: branchRepository,
      ),
    );
  }

}