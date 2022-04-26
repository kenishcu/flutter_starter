import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stater/adapters/repository/setting/branch_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/department_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/room_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/setting_repository.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:flutter_stater/models/settings/bed_model.dart';
import 'package:flutter_stater/models/settings/branch_model.dart';
import 'package:flutter_stater/models/settings/department_model.dart';
import 'package:flutter_stater/models/settings/room_model.dart';
import 'package:flutter_stater/models/settings/setting_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mac_address/mac_address.dart';

import '../routes/app_pages.dart';

class SettingController extends GetxController {

  final GetStorage box;
  final DepartmentRepository departmentRepository;
  final RoomRepository roomRepository;
  final SettingRepository settingRepository;
  final BranchRepository branchRepository;


  SettingController(
      {
        required this.departmentRepository,
        required this.roomRepository,
        required this.settingRepository,
        required this.branchRepository,
        required this.box,
      }) {
    init();
  }

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  List<BranchModel> branches = <BranchModel>[].obs;

  Rx<BranchModel> selectedBranch= BranchModel().obs;

  List<DepartmentModel> departments = <DepartmentModel>[].obs;

  List<DepartmentModel> listDepartments = [];

  Rx<DepartmentModel> selectedDepartment = DepartmentModel().obs;

  List<RoomModel> listRooms = [];

  List<RoomModel> rooms = <RoomModel>[].obs;

  Rx<RoomModel> selectedRoom = RoomModel().obs;

  List<BedModel> beds = <BedModel>[].obs;

  Rx<BedModel> selectedBed = BedModel().obs;

  Rx<TextEditingController> macAddress = TextEditingController().obs;
  Rx<TextEditingController> ipAddress = TextEditingController().obs;

  void init() {
    getBranches();
    getDepartments();
    getRooms();
    getDeviceInfo();
  }

  @override
  void onClose() {
    macAddress.value.dispose();
    ipAddress.value.dispose();
  }

  /// Function getBranches
  /// params: Null
  /// Get list branches of application
  Future getBranches() async {
    ResultModel res = await branchRepository.findAll();
    if (res.status == true) {
      /// get data branches
      List<BranchModel> bs = [];
      res.results.forEach((e) => {
        bs.add(BranchModel.fromJson(e))
      });
      branches = bs;
    } else {
      branches.clear();
    }
  }

  /// Function setBranch: set selected branch
  /// params: branchModel
  ///
  void setBranch(BranchModel branchModel) {
      rooms.clear();
      beds.clear();
      departments.clear();
      print(branchModel.toString());
      print(listDepartments.where((element) => element.branchId.toString() == branchModel.branchId.toString()).toList().toString());
      List<DepartmentModel> deps = listDepartments.where((element) => element.branchId.toString() == branchModel.branchId.toString()).toList();

      selectedBranch.value = branchModel;

      for (var dep in deps) {
        departments.add(dep);
      }

      selectedDepartment.value = DepartmentModel(
          roomId: 0,
          roomName: "",
          roomTypeId: 0,
          roomCode: "",
          parentName: "",
          parentId: 0,
          branchId: 0,
          companyId: 0
      );
      selectedRoom.value = RoomModel(
          roomId: 0,
          roomName: "",
          parentName: "",
          parentId: 0,
          beds: []
      );
      selectedBed.value = BedModel(
        bedId: 0,
        bedName: ""
      );

  }

  /// Function getDepartments
  /// params: Null
  /// Get list departments of application
  Future getDepartments() async {
    ResultModel res = await departmentRepository.findAll();
    if (res.status == true) {
      /// get data departments
      List<DepartmentModel> dep = [];
      res.results.forEach((e) => {
        dep.add(DepartmentModel.fromJson(e))
      });
      listDepartments = dep;
    } else {
      listDepartments.clear();
    }
  }

  /// Function getDepartments
  /// params: Null
  /// Get list departments of application
  void setDepartment(DepartmentModel departmentModel) {
    rooms.clear();
    beds.clear();
    selectedDepartment.value = departmentModel;
    List<RoomModel> room = listRooms.where((element) => element.parentId == departmentModel.parentId).toList();
    selectedRoom.value = RoomModel(
        roomId: 0,
        roomName: "",
        parentName: "",
        parentId: 0,
        beds: []
    );
    selectedBed.value = BedModel(
        bedId: 0,
        bedName: ""
    );

    for (var element in room) {
      rooms.add(element);
    }
  }
  /// Function setRoom: when department has been selected, list room will be changed
  /// params: Null
  /// set list room selected
  void setRooms(RoomModel d) {
    selectedRoom.value = d;
    beds.clear();
    List<BedModel>? listBeds = d.beds;
    for (var bed in listBeds!) {
      beds.add(bed);
    }
    selectedBed.value = BedModel(
      bedId: 0,
      bedName: "",
    );
  }

  /// Function getRooms
  /// params: Null
  /// Get list rooms of application
  Future getRooms() async {
    ResultModel res = await roomRepository.findAll();
    if (res.status == true) {
      /// get data room
      List<RoomModel> room = [];
      res.results.forEach((e) => {
        room.add(RoomModel.fromJson(e))
      });
      listRooms = room;
    }
  }

  /// Function setRoom: when department has been selected, list room will be changed
  /// params: Null
  /// set list room selected
  void setBeds(BedModel b) {
    selectedBed.value = b;
  }

  /// Function getDepartments
  /// params: Null
  /// Get list departments of application
  Future getDeviceInfo() async {
    // get ip address
    final ipv4 = await Ipify.ipv4();
    ipAddress.value.text = ipv4;

    try {
      macAddress.value.text = await GetMac.macAddress;
    } on PlatformException {
      print('Failed to get Device MAC Address.');
    }
  }


  String? validateIpAddress(String value) {
    if (value.length < 6) {
      return "IP Address must be of 6 characters";
    }
    return null;
  }


  String? validateMacAddress(String value) {
    if (value.length < 6) {
      return "Mac Address must be of 6 characters";
    }
    return null;
  }

  ///
  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }

  ///
  void storeSettingConfig(SettingModel setting) {
    print("write: ${setting.toJson()}");
    box.write("device_info", setting.toJson());
  }

  void submitSetting() async {
    SettingModel setting =  SettingModel(
      branchId: selectedBranch.value.branchId,
      branchName: selectedBranch.value.branchName,
      parentId: selectedDepartment.value.parentId,
      parentName: selectedDepartment.value.parentName,
      roomId: selectedRoom.value.roomId,
      roomName: selectedRoom.value.roomName,
      bedId: selectedBed.value.bedId,
      bedName: selectedBed.value.bedName,
      ipAddress: ipAddress.value.text,
      macAddress: macAddress.value.text,
      deviceToken: "",
      hotLine: "",
      authToken: "",
      contracts: []
    );
    print('save setting: ' + setting.toString());
    ResultModel res = await settingRepository.sendSetting(setting.toJson());
    if(res.status == true) {
      storeSettingConfig(setting);
      final map = box.read("device_info") ?? {};
      print('map save : ' + map.toString());
      Get.offAndToNamed(Routes.INTRO);
    } else {
      print("error");
    }

  }

}