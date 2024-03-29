import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:itrapp/bindings/bill_and_payment_binding.dart';
import 'package:itrapp/bindings/food_treatment_binding.dart';
import 'package:itrapp/bindings/home_binding.dart';
import 'package:itrapp/bindings/intro_binding.dart';
import 'package:itrapp/bindings/laundry_binding.dart';
import 'package:itrapp/bindings/loan_service_binding.dart';
import 'package:itrapp/bindings/medical_history_binding.dart';
import 'package:itrapp/bindings/restaurant_binding.dart';
import 'package:itrapp/bindings/spa_binding.dart';
import 'package:itrapp/controllers/app_controller.dart';
import 'package:itrapp/storages/app_storages.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import 'bindings/app_binding.dart';
import 'bindings/setting_binding.dart';

Future<void> setup() async {

    /// set up firebase
    await Firebase.initializeApp();

    /// set up app storage
    await AppStorages.init();

    /// app binding
    AppBinding(box: GetStorage(AppStorages.APP)).dependencies();
    SettingBinding(box: GetStorage(AppStorages.APP)).dependencies();
    IntroBinding(box: GetStorage(AppStorages.APP)).dependencies();
    HomeBinding(box: GetStorage(AppStorages.APP)).dependencies();
    RestaurantBinding(box: GetStorage(AppStorages.APP)).dependencies();
    LaundryBinding(box: GetStorage(AppStorages.APP)).dependencies();
    SpaBinding(box: GetStorage(AppStorages.APP)).dependencies();
    FoodTreatmentBinding(box: GetStorage(AppStorages.APP)).dependencies();
    LoanServiceBinding(box: GetStorage(AppStorages.APP)).dependencies();
    MedicalHistoryBinding(box: GetStorage(AppStorages.APP)).dependencies();
    BillAndPaymentBinding(box: GetStorage(AppStorages.APP)).dependencies();

    /// handle fcm
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    print('Handling a background message ${message.messageId}');
    AppController appController = Get.find<AppController>();
    await appController.getNotification();
}
