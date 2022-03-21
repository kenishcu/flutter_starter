import 'package:get_storage/get_storage.dart';

abstract class AppStorages {
  static const String APP = 'app';
  static const String NOTIFICATION = 'notification';
  static const String SETTING = 'setting';

  static init() async {
    await GetStorage.init(APP);
    await GetStorage.init(NOTIFICATION);
  }
}