import 'package:flutter_stater/storages/app_storages.dart';
import 'package:get_storage/get_storage.dart';

import 'bindings/app_binding.dart';
import 'bindings/setting_binding.dart';

Future<void> setup() async {

    /// set up firebase

    /// set up app storage
    await AppStorages.init();

    /// app binding
    AppBinding(box: GetStorage(AppStorages.APP)).dependencies();
    SettingBinding(box: GetStorage(AppStorages.SETTING)).dependencies();
}