import 'package:flutter_stater/adapters/repository/home/calendar_info_repository.dart';
import 'package:flutter_stater/adapters/repository/home/receipt_repositiry.dart';
import 'package:flutter_stater/controllers/index.dart';
import 'package:flutter_stater/controllers/loan_service_controller.dart';
import 'package:flutter_stater/controllers/restaurant/product_restaurant_controller.dart';
import 'package:flutter_stater/models/home/bill_and_payment/bill_and_payment_model.dart';
import 'package:flutter_stater/models/home/meal/reception_meal_model.dart';
import 'package:flutter_stater/models/home/pharma/reception_pharma_model.dart';
import 'package:flutter_stater/models/home/treatment/reception_treatment_model.dart';
import 'package:flutter_stater/models/home/treatment/treatment_info_model.dart';
import 'package:flutter_stater/models/settings/setting_model.dart';
import 'package:flutter_stater/models/user/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

import '../models/result/result_model.dart';
import '../screens/home/widgets/calendar_info/animated_list_utils.dart';
import '../utils/convert.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {

  final GetStorage box;
  final ReceiptRepository receiptRepository;
  final CalendarInfoRepository calendarInfoRepository;

  HomeController({
    required this.box,
    required this.receiptRepository,
    required this.calendarInfoRepository,
  });

  late UserModel patientInfo;
  late SettingModel deviceInfo;

  List<BillAndPaymentModel> billAndPaymentInfo = <BillAndPaymentModel>[].obs;
  List<ReceptionMealModel> meals = <ReceptionMealModel>[].obs;
  List<ReceptionPharmaModel> pharmas = <ReceptionPharmaModel>[].obs;
  List<TreatmentInfoModel> treatments = <TreatmentInfoModel>[].obs;
  var selectedDay = 0.obs;

  /// meal
  late ListModel<ReceptionMealModel> listMeal;
  bool? shrinkMealList = false;
  GlobalKey<AnimatedListState> listKeyMeal = GlobalKey<AnimatedListState>(debugLabel: '_homeMeal');

  /// treatment
  late ListModel<ReceptionTreatmentModel> listTreatment;
  bool? shrinkTreatmentList = false;
  final GlobalKey<AnimatedListState> listKeyTreatment = GlobalKey<AnimatedListState>();

  /// pharma
  // late ListModel<ReceptionPharmaModel> listPharma;
  // bool? shrinkPharmaList = false;
  // final GlobalKey<AnimatedListState> listKeyPharma = GlobalKey<AnimatedListState>();


  final List<Map<String, dynamic>> calendarInfo =
  [
    {
      'dayOfWeek': 'T2',
      'dayOfMonth': '',
      'dayUnix': '',
      'data': {
        'meal': [],
        'treatment': [],
        'pharma': []
      }
    },
    {
      'dayOfWeek': 'T3',
      'dayOfMonth': '',
      'dayUnix': '',
      'data': {
        'meal': [],
        'treatment': [],
        'pharma': []
      }
    },
    {
      'dayOfWeek': 'T4',
      'dayOfMonth': '',
      'dayUnix': '',
      'data': {
        'meal': [],
        'treatment': [],
        'pharma': []
      }
    },
    {
      'dayOfWeek': 'T5',
      'dayOfMonth': '',
      'dayUnix': '',
      'data': {
        'meal': [],
        'treatment': [],
        'pharma': []
      }
    },
    {
      'dayOfWeek': 'T6',
      'dayOfMonth': '',
      'dayUnix': '',
      'data': {
        'meal': [],
        'treatment': [],
        'pharma': []
      }
    },
    {
      'dayOfWeek': 'T7',
      'dayOfMonth': '',
      'dayUnix': '',
      'data': {
        'meal': [],
        'treatment': [],
        'pharma': []
      }
    },
    {
      'dayOfWeek': 'CN',
      'dayOfMonth': '',
      'dayUnix': '',
      'data': {
        'meal': [],
        'treatment': [],
        'pharma': []
      }
    }
  ];

  @override
  void onInit() {
    super.onInit();
    addCalendarInfo();
  }

  @override
  void dispose(){
    super.dispose();
    // listKeyMeal.currentState!.dispose();
  }



  // Used to build an item after it has been removed from the list. This
  // method is needed because a removed item remains visible until its
  // animation has completed (even though it's gone as far this ListModel is
  // concerned). The widget will be used by the
  // [AnimatedListState.removeItem] method's
  // [AnimatedListRemovedItemBuilder] parameter.
  Widget _buildRemovedItem(ReceptionMealModel item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      title: "Phục vụ ăn trưa",
      subTitle: "Tại phòng",
      iconData: Icons.restaurant,
      iconColor: Theme.of(context).colorScheme.secondary,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      shadowColor: Theme.of(context).colorScheme.secondaryContainer,
      time: "12:00-13:00",
      onTap: () {
      },
    );
  }


  // Used to build an item after it has been removed from the list. This
  // method is needed because a removed item remains visible until its
  // animation has completed (even though it's gone as far this ListModel is
  // concerned). The widget will be used by the
  // [AnimatedListState.removeItem] method's
  // [AnimatedListRemovedItemBuilder] parameter.
  Widget _buildRemovedItemTreatment(ReceptionTreatmentModel item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      title: "Phục vụ ăn trưa",
      subTitle: "Tại phòng",
      iconData: Icons.restaurant,
      iconColor: Theme.of(context).colorScheme.secondary,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      shadowColor: Theme.of(context).colorScheme.secondaryContainer,
      time: "12:00-13:00",
      onTap: () {
      },
    );
  }


  void addCalendarInfo () {

    listMeal = ListModel<ReceptionMealModel>(
      listKey: listKeyMeal,
      initialItems: <ReceptionMealModel>[],
      removedItemBuilder: _buildRemovedItem
    );

    listTreatment = ListModel<ReceptionTreatmentModel>(
        listKey: listKeyTreatment,
        initialItems: <ReceptionTreatmentModel>[],
        removedItemBuilder: _buildRemovedItemTreatment);

    var now = DateTime.now();
    var d = DateTime(now.year, now.month, now.day);
    var weekDay = d.weekday;
    selectedDay.value = d.weekday - 1;
    print('day week ${d.weekday.toString()}');
    var firstDayOfWeek = d.subtract(Duration(days: weekDay - 1));
    for(int i = 0; i < 7; i++ ) {
      var day = firstDayOfWeek.add(Duration(days: i));
      calendarInfo[i].update('dayOfMonth', (value) => day.day);
      calendarInfo[i].update("dayUnix", (value) => day.millisecondsSinceEpoch);
    }
  }

  void setPatientInfo(UserModel user) {
    patientInfo = user;
  }

  void setBedInfo() {
    print("------------------------------");
    final deviceInfoMem = box.read("device_info");
    if(deviceInfoMem != null) {
      deviceInfo = SettingModel.fromJson(deviceInfoMem);
      print('device_info : ' + deviceInfo.toString());
    }
  }

  Future getBillAndPaymentInfo(int patientId, String receptionQueueId) async {
    ResultModel res = await receiptRepository.getBillAndPayment(patientId, receptionQueueId);
    if(res.status == true) {
      List<BillAndPaymentModel> billAndPaymentInfoMem = [];
      res.results.forEach(
          (e) => {
            billAndPaymentInfoMem.add(BillAndPaymentModel.fromJson(e))
          }
      );
      billAndPaymentInfo = billAndPaymentInfoMem;
    }
  }

  Future getScheduleOfPatient() async {
    ResultModel res1 = await calendarInfoRepository.getMealInfo();
    print("Meal info: ${res1.toString()}");
    print("------- Setting Meal: -------");
    List<ReceptionMealModel> _meals = [];
    if(res1.results != null && res1.status == true) {
      for (var meal in res1.results) {
        ReceptionMealModel m = ReceptionMealModel.fromJson(meal);
        _meals.add(m);
        var calendar = calendarInfo;
        for(int i = 0; i < calendar.length; i++) {
          if(isSameDay(calendar[i]['dayUnix'], m.usedAt!)) {
            calendarInfo[i]['data']['meal'].add(m.toJson());
          }
        }
      }
      meals = _meals;
    }
    ResultModel res2 = await calendarInfoRepository.getPharmaInfo();
    print("Pharma info: ${res2.toString()}");
    List<ReceptionPharmaModel> _pharmas = [];
    if(res2.results != null && res2.status == true) {
      for (var pharma in res2.results) {
        ReceptionPharmaModel rec = ReceptionPharmaModel.fromJson(pharma);
        _pharmas.add(rec);
      }
      pharmas = _pharmas;
    }


    ResultModel res3 = await calendarInfoRepository.getTreatmentInfo();
    print("Treatment info: ${res3.toString()}");
    print("------- Setting Treatment: -------");
    List<TreatmentInfoModel> _treatments = [];
    if(res3.results != null && res3.status == true) {
      for (var treatment in res3.results) {
        TreatmentInfoModel t = TreatmentInfoModel.fromJson(treatment);
        _treatments.add(t);
        var calendar = calendarInfo;
        for(int i = 0; i < calendar.length; i++) {
          if(isSameDay(calendar[i]['dayUnix'], t.currentDayTime!)) {
            calendarInfo[i]['data']['treatment'].add(t.toJson());
          }
        }
      }
      treatments = _treatments;
    }

    print(calendarInfo.toString());

  }

  void setSelectedDayCalendar(int _selectedDay) {
    print("selected day: ${_selectedDay.toString()}");
    selectedDay.value = _selectedDay;
    setList();
    print('selected day Info: ');
    print('meal: ${calendarInfo[_selectedDay]['data'].toString()}');
  }

  /// List controller
  ///
  void showListMeal() {
    List<ReceptionMealModel> listE = [];
    var data = calendarInfo[selectedDay.value]['data']['meal'];
    if(data != null && data.length > 0) {
      data.forEach((e) => {
        listE.add(ReceptionMealModel.fromJson(e))
      });
    }
    shrinkMealList = false;
    listMeal.setNewList(listE);
  }

  void shrinkListMeal() {
    shrinkMealList = false;
    listMeal.shrinkInOne();
  }

  void showListTreatment() {}

  void shrinkListTreatment() {}

  void setList() {
    // set list meal
    List<ReceptionMealModel> listE = [];
    var data = calendarInfo[selectedDay.value]['data']['meal'];
    if(data != null && data.length > 0) {
      data.forEach((e) => {
        listE.add(ReceptionMealModel.fromJson(e))
      });
    }
    listMeal.setNewList(listE);

    // set list treatment
    List<ReceptionTreatmentModel> listETreatment = [];
    var dataTreatment = calendarInfo[selectedDay.value]['data']['treatment'];
    if(dataTreatment != null && dataTreatment.length > 0) {
      dataTreatment.forEach((e) => {
        listETreatment.add(ReceptionTreatmentModel.fromJson(e))
      });
    }
    listTreatment.setNewList(listETreatment);
  }

  Future getRestaurantInfo() async {
    final ProductRestaurantController productRestaurantController = Get.find<ProductRestaurantController>();
    await productRestaurantController.initRestaurant();
    await productRestaurantController.initScreenRestaurant();
  }

  Future getFoodTreatmentInfo() async {
    final FoodTreatmentController foodTreatmentController = Get.find<FoodTreatmentController>();
    await foodTreatmentController.initFoodTreatment();
  }

  Future getLoanServiceInfo() async {
    final LoanServiceController loanServiceController = Get.find<LoanServiceController>();
    await loanServiceController.initLoanServiceInfo();
  }

  Future getMedicalHistory() async {
    final MedicalHistoryController medicalHistoryController = Get.find<MedicalHistoryController>();
    await medicalHistoryController.initMedicalHistory();
  }

  Future getBillAndPayment() async {
    final BillAndPaymentController billAndPaymentController = Get.find<BillAndPaymentController>();
    await billAndPaymentController.initBillAndPayment();
  }
}