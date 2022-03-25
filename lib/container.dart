import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_stater/bindings/intro_binding.dart';
import 'package:flutter_stater/storages/app_storages.dart';
import 'package:get_storage/get_storage.dart';

import 'bindings/app_binding.dart';
import 'bindings/setting_binding.dart';
import 'config/config.dart';

final configurations = Configurations();

Future<void> setup() async {

    /// set up firebase
    // await Firebase.initializeApp(
    //     options: FirebaseOptions(
    //         apiKey: configurations.apiKey,
    //         appId: configurations.appId,
    //         messagingSenderId: configurations.messagingSenderId,
    //         projectId: configurations.projectId),
    // );
    /// set up app storage
    await AppStorages.init();

    /// app binding
    AppBinding(box: GetStorage(AppStorages.APP)).dependencies();
    SettingBinding(box: GetStorage(AppStorages.APP)).dependencies();
    IntroBinding(box: GetStorage(AppStorages.APP)).dependencies();

}