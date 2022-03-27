
import 'package:flutter_stater/models/user/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {

  final GetStorage box;

  HomeController({
    required this.box,
  }) {
    init();
  }

  late UserModel patientInfo;

  void init() {
  }

  void setPatientInfo(UserModel user) {
    patientInfo = user;

  }
}