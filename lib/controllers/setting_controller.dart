import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stater/adapters/repository/setting/department_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/room_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/setting_repository.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:flutter_stater/models/settings/bed_model.dart';
import 'package:flutter_stater/models/settings/department_model.dart';
import 'package:flutter_stater/models/settings/room_model.dart';
import 'package:flutter_stater/models/settings/setting_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mac_address/mac_address.dart';

class SettingController extends GetxController {

  final GetStorage box;
  final DepartmentRepository departmentRepository;
  final RoomRepository roomRepository;
  final SettingRepository settingRepository;


  SettingController(
      {
        required this.departmentRepository,
        required this.roomRepository,
        required this.settingRepository,
        required this.box,
      }) {
    init();
  }

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  List<DepartmentModel> departments = <DepartmentModel>[].obs;

  Rx<DepartmentModel> selectedDepartment = DepartmentModel().obs;

  List<RoomModel> listRooms = [];

  List<RoomModel> rooms = <RoomModel>[].obs;

  Rx<RoomModel> selectedRoom = RoomModel().obs;

  List<BedModel> beds = <BedModel>[].obs;

  Rx<BedModel> selectedBed = BedModel().obs;

  Rx<TextEditingController> macAddress = TextEditingController().obs;
  Rx<TextEditingController> ipAddress = TextEditingController().obs;

  void init() {
    getDepartments();
    getRooms();
    getDeviceInfo();
  }

  @override
  void onClose() {
    macAddress.value.dispose();
    ipAddress.value.dispose();
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
      departments = dep;
    } else {
      departments.clear();
    }
  }

  /// Function getDepartments
  /// params: Null
  /// Get list departments of application
  void setDepartment(DepartmentModel departmentModel) {
    rooms.clear();
    selectedDepartment.value = departmentModel;
    print("selected Department:" + selectedDepartment.value.toString());
    List<RoomModel> room = listRooms.where((element) => element.parentId == departmentModel.parentId).toList();
    selectedRoom.value = RoomModel(
        roomId: 0,
        roomName: "",
        parentName: "",
        parentId: 0,
        beds: []
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

    // get mac address
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
    box.write("device_info", setting.toJson());
  }

}