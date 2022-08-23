import 'package:dart_ipify/dart_ipify.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itrapp/adapters/repository/setting/branch_repository.dart';
import 'package:itrapp/adapters/repository/setting/department_repository.dart';
import 'package:itrapp/adapters/repository/setting/room_repository.dart';
import 'package:itrapp/adapters/repository/setting/setting_repository.dart';
import 'package:itrapp/controllers/app_controller.dart';
import 'package:itrapp/models/result/result_model.dart';
import 'package:itrapp/models/settings/bed_model.dart';
import 'package:itrapp/models/settings/branch_model.dart';
import 'package:itrapp/models/settings/department_model.dart';
import 'package:itrapp/models/settings/room_model.dart';
import 'package:itrapp/models/settings/setting_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mac_address/mac_address.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  RxString tokenFirebase = "".obs;

  void init() {
    getBranches();
    getDepartments();
    getRooms();
    getDeviceInfo();
    getFirebaseToken();
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

  void setToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJiZWRfaWQiOjEyMzEyMywiYmVkX25hbWUiOiJ0ZXN0IDEiLCJicmFuY2hfaWQiOjE3MDYsImJyYW5jaF9uYW1lIjoiUGjDumMgVHLGsOG7nW5nIE1pbmgiLCJkZXZpY2VfdG9rZW4iOiJjWDlTTTFhRlRkbWljN2N3MHdDbUpEOkFQQTkxYkVGYWFOSklQc3h6LTZvWkJEZWtsRllZMkhIb2dtRGlaZ2RPNWFyYi1icmJ6RGFGWmJGaDRBRmtzZUpJVXRhdkYyZXhCYzJIa3RGYkZhSGlaeVFZMlpEWWdzN2FENEJSTmVMc3EzNmcxcjBjY3lrcmhsLXA0UF9rMElVLVMzeFRaYkxocEFrIiwiZXhwIjoxNjYwNzMxNjUzLCJpcF9hZGRyZXNzIjoiMjIyLjI1Mi4yOC41MCIsIm1hY19hZGRyZXNzIjoiMDI6MTU6QjI6MDA6MDA6MDAiLCJtYWlsIjoiIiwibmFtZSI6IiIsIm9yaWdfaWF0IjoxNjYwNzMxNTkzLCJwYXJlbnRfaWQiOjAsInBsYXRmb3JtIjoxLCJyb2xlX2NvZGUiOiIiLCJyb2xlX2lkIjowLCJyb2xlX25hbWUiOiIiLCJyb29tX2lkIjowLCJ0b2tlbiI6IiIsInVzZXJuYW1lIjoiIn0.liiFdM7YoxR0Mw_ZHGOvI-H0YDgfBMTFjwhL4Ak7Kkw');
  }

  /// Function setBranch: set selected branch
  /// params: branchModel
  ///
  void setBranch(BranchModel branchModel) {
      rooms.clear();
      beds.clear();
      departments.clear();
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

    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await GetMac.macAddress;
    } on PlatformException {
      platformVersion = 'Failed to get Device MAC Address.';
    }
    print('mac address: $platformVersion');
    macAddress.value.text = platformVersion;
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

  void getSettingConfig() {
    final map = box.read("device_info") ?? {};
    if(map['bed_id'] != null){
      selectedDepartment.value = listDepartments.where((element) => map['parent_id'] == element.parentId ).toList()[0];
      selectedRoom.value = listRooms.where((element) => map['room_id'] == element.roomId).toList()[0];
      selectedBed.value = selectedRoom.value.beds!.where((element) => element.bedId == map['bed_id']).toList()[0];
    }
  }

  Future regetToken() async {
    final map = box.read("device_info") ?? {};
    SettingModel setting =  SettingModel(
        branchId: map['branch_id'],
        branchName: map['branch_name'],
        parentId: map['parent_id'],
        parentName: map['parent_name'],
        roomId: map['room_id'],
        roomName: map['room_name'],
        bedId: map['bed_id'],
        bedName: map['bed_name'],
        ipAddress: map['ip_address'],
        macAddress: map['mac_address'],
        deviceToken: map['device_token'],
        hotLine: "",
        authToken: "",
        contracts: []
    );
    ResultModel res = await settingRepository.sendSetting(setting.toJson());
    if(res.status == true) {
      storeSettingConfig(setting);
      final map = box.read("device_info") ?? {};
      print('map save : ' + map.toString());
      AppController appController = Get.find<AppController>();
      appController.initAppSetting();
      Get.offAndToNamed(Routes.INTRO);
    } else {
      print("error");
    }
  }

  Future submitSetting() async {
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
      deviceToken: tokenFirebase.value,
      hotLine: "",
      authToken: "",
      contracts: []
    );
    ResultModel res = await settingRepository.sendSetting(setting.toJson());
    if(res.status == true) {
      storeSettingConfig(setting);
      final map = box.read("device_info") ?? {};
      print('map save : ' + map.toString());
      AppController appController = Get.find<AppController>();
      appController.initAppSetting();
      Get.offAndToNamed(Routes.INTRO);
    } else {
      print("error");
    }
  }

  Future getFirebaseToken() async {
    await FirebaseMessaging.instance.getToken().then(
            (token) => {
              print('token firebase ${token.toString()}'),
              tokenFirebase.value = token!
            }
    );
  }
}