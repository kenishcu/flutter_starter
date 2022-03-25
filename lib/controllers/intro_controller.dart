import 'package:flutter_stater/adapters/repository/home/user_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class IntroController extends GetxController {

  final GetStorage box;
  final UserRepository userRepository;

  IntroController({
    required this.box,
    required this.userRepository,
  }) {
    init();
  }

  void init() {
  }


}