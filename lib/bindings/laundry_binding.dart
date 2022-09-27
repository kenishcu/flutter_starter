import 'package:itrapp/adapters/repository/laundry/laundry_repository.dart';
import 'package:itrapp/controllers/laundry/product_laundry_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class LaundryBinding extends Bindings {
  final GetStorage box;

  LaundryBinding({required this.box});

  @override
  void dependencies() {
    final LaundryRepository laundryRepository = LaundryRepository();

    Get.put<ProductLaundryController>(ProductLaundryController(
      box: GetStorage(AppStorages.APP),
      laundryRepository: laundryRepository,
    ));
  }
}
