import 'package:flutter_stater/screens/food_treatment/food_treatment_screen.dart';
import 'package:flutter_stater/screens/home/home_screen.dart';
import 'package:flutter_stater/screens/intro/intro_screen.dart';
import 'package:flutter_stater/screens/restaurant/restaurant_screen.dart';
import 'package:flutter_stater/screens/setting/setting_screen.dart';
import 'package:flutter_stater/screens/splash/splash_screen.dart';
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
    )
  ];
}