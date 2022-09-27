import 'package:itrapp/screens/bill_and_payment/bill_and_payment_screen.dart';
import 'package:itrapp/screens/food_treatment/food_treatment_history/food_treatment_history_screen.dart';
import 'package:itrapp/screens/food_treatment/food_treatment_screen.dart';
import 'package:itrapp/screens/home/home_screen.dart';
import 'package:itrapp/screens/intro/intro_screen.dart';
import 'package:itrapp/screens/laundry/laundry_screen.dart';
import 'package:itrapp/screens/medical_history/medical_history_screen.dart';
import 'package:itrapp/screens/restaurant/restaurant_history/restaurant_history_screen.dart';
import 'package:itrapp/screens/restaurant/restaurant_screen.dart';
import 'package:itrapp/screens/setting/setting_screen.dart';
import 'package:itrapp/screens/spa/spa_screen.dart';
import 'package:itrapp/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../screens/loan_service/loan_service_screen.dart';

part 'app_routes.dart';


abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen()
    ),
    GetPage(
        name: Routes.SPLASH,
        page: () => const SplashScreen()
    ),
    GetPage(
        name: Routes.RESTAURANT,
        page: () => const RestaurantScreen()
    ),
    GetPage(
        name: Routes.LAUNDRY,
        page: () => const LaundryScreen()
    ),
    GetPage(
        name: Routes.SPA,
        page: () => const SpaScreen()
    ),
    GetPage(
        name: Routes.RESTAURANT_HISTORY,
        page: () => const RestaurantHistoryScreen()
    ),
    GetPage(
      name: Routes.INTRO,
      page: () => const IntroScreen()
    ),
    GetPage(
        name: Routes.SETTING,
        page: () => const SettingScreen()
    ),
    GetPage(
        name: Routes.LOAN_SERVICE,
        page: () => const LoanServiceScreen()
    ),
    GetPage(
      name: Routes.FOOD_TREATMENT,
      page: () => const FoodTreatmentScreen()
    ),
    GetPage(
        name: Routes.FOOD_TREATMENT_HISTORY,
        page: () => const FoodTreatmentHistoryScreen()
    ),
    GetPage(
        name: Routes.MEDICAL_HISTORY,
        page: () => const MedicalHistoryScreen()
    ),
    GetPage(
        name: Routes.BILL_AND_PAYMENT,
        page: () => const BillAndPaymentScreen()
    )
  ];
}