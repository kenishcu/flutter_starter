import 'package:itrapp/adapters/repository/food_treatment/food_treatment_repository.dart';
import 'package:itrapp/controllers/food_treatment_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class FoodTreatmentBinding extends Bindings {

  final GetStorage box;

  FoodTreatmentBinding({
    required this.box
  });

  @override
  void dependencies() {

    final FoodTreatmentRepository foodTreatmentRepository = FoodTreatmentRepository();

    Get.put<FoodTreatmentController>(
      FoodTreatmentController(
        box: GetStorage(AppStorages.APP),
        foodTreatmentRepository: foodTreatmentRepository,
      ),
    );
  }
}