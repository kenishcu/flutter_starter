import 'package:itrapp/adapters/repository/spa/spa_repository.dart';
import 'package:itrapp/controllers/spa/product_spa_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class SpaBinding extends Bindings {
  final GetStorage box;

  SpaBinding({required this.box});

  @override
  void dependencies() {
    final SpaRepository spaRepository = SpaRepository();

    Get.put<ProductSpaController>(ProductSpaController(
      box: GetStorage(AppStorages.APP),
      spaRepository: spaRepository,
    ));
  }
}
