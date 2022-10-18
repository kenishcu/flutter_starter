import 'package:itrapp/adapters/repository/home/calendar_info_repository.dart';
import 'package:itrapp/adapters/repository/home/receipt_repositiry.dart';
import 'package:itrapp/controllers/index.dart';
import 'package:itrapp/controllers/laundry/product_laundry_controller.dart';
import 'package:itrapp/controllers/loan_service_controller.dart';
import 'package:itrapp/controllers/restaurant/product_restaurant_controller.dart';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/models/home/bill_and_payment/bill_and_payment_model.dart';
import 'package:itrapp/models/home/bill_and_payment/receipt_model.dart';
import 'package:itrapp/models/home/meal/reception_meal_model.dart';
import 'package:itrapp/models/home/pharma/reception_pharma_model.dart';
import 'package:itrapp/models/home/treatment/reception_treatment_model.dart';
import 'package:itrapp/models/home/treatment/treatment_info_model.dart';
import 'package:itrapp/models/settings/setting_model.dart';
import 'package:itrapp/models/user/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

import '../models/home/pharma/pharma_info_model.dart';
import '../models/result/result_model.dart';
import '../routes/app_pages.dart';
import '../utils/convert.dart';
import 'spa/product_spa_controller.dart';

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
  late ReceiptModel receiptModel;

  List<BillAndPaymentModel> billAndPaymentInfo = <BillAndPaymentModel>[].obs;
  List<ReceptionMealModel> meals = <ReceptionMealModel>[].obs;
  List<ReceptionPharmaModel> pharmas = <ReceptionPharmaModel>[].obs;
  List<TreatmentInfoModel> treatments = <TreatmentInfoModel>[].obs;
  var selectedDay = 0.obs;

  /// meal
  late List<ReceptionMealModel> listMeal;

  /// treatment
  late List<TreatmentInfoModel> listTreatment;

  /// pharma
  late List<PharmaInfoModel> listPharma;

  late DateTime currentDateTime;



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
    currentDateTime = DateTime.now();
    addCalendarInfo();
  }

  @override
  void dispose(){
    super.dispose();
    // listKeyMeal.currentState!.dispose();
  }



  void addCalendarInfo () {
    var d = DateTime(currentDateTime.year, currentDateTime.month, currentDateTime.day);
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

  Future getReceiptInfo(int patientId, String receptionQueueId) async {
    ResultModel res = await receiptRepository.getReceiptInfo(patientId, receptionQueueId);
    if(res.status == true) {
      receiptModel = ReceiptModel.fromJson(res.results);
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
          print('date: ' + calendar[i]['dayUnix'].toString());
          if(isSameDay(calendar[i]['dayUnix'], m.usedAt!)) {
            print(isSameDay(calendar[i]['dayUnix'], m.usedAt!));
            print(m.usedAt!);
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
        var calendar = calendarInfo;
        for(int i = 0; i < calendar.length; i++) {
          if(rec.currentDayTime != null && isSameDay(calendar[i]['dayUnix'], rec.currentDayTime!)) {
              for(var element in rec.pharmas!) {
                calendarInfo[i]['data']['pharma'].add(element.toJson());
              }
          }
        }
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
    print('meal: ${calendarInfo[_selectedDay]['data']['meal'].toString()}');
    print('service: ${calendarInfo[selectedDay.value]['data']['treatment'].toString()}');
    print('pharma: ${calendarInfo[selectedDay.value]['data']['pharma'].toString()}');
  }

  void setList() {
    // set list meal
    List<ReceptionMealModel> listE = [];
    var data = calendarInfo[selectedDay.value]['data']['meal'];
    if(data != null && data.length > 0) {
      data.forEach((e) => {
        listE.add(ReceptionMealModel.fromJson(e))
      });
    }

    listMeal = listE;

    // set list treatment
    List<TreatmentInfoModel> listETreatment = [];
    var dataTreatment = calendarInfo[selectedDay.value]['data']['treatment'];
    if(dataTreatment != null && dataTreatment.length > 0) {
      dataTreatment.forEach((e) => {
        listETreatment.add(TreatmentInfoModel.fromJson(e))
      });
    }

    listTreatment = listETreatment;

    // set list pharma
    List<PharmaInfoModel> listEPharma = [];
    var dataPharma = calendarInfo[selectedDay.value]['data']['pharma'];
    if(dataPharma != null && dataPharma.length > 0) {
      dataPharma.forEach((e) => {
        listEPharma.add(PharmaInfoModel.fromJson(e))
      });
    }
    listPharma = listEPharma;
  }

  Future goToBill() async {
    final BillAndPaymentController billAndPaymentController = Get.find<BillAndPaymentController>();
    await billAndPaymentController.initBillAndPayment();
    Get.offAndToNamed(Routes.BILL_AND_PAYMENT);
  }

  Future getRestaurantInfo() async {
    final ProductRestaurantController productRestaurantController = Get.find<ProductRestaurantController>();
    await productRestaurantController.initRestaurant();
    await productRestaurantController.initScreenRestaurant();
    Get.offAndToNamed(Routes.RESTAURANT);
  }

  Future getLaundryInfo() async {
    final ProductLaundryController productLaundryController = Get.find<ProductLaundryController>();
    await productLaundryController.initLaundry();
    await productLaundryController.initScreenLaundry();
  }

  Future getSpaInfo() async {
    final ProductSpaController productSpaController = Get.find<ProductSpaController>();
    await productSpaController.initSpa();
    await productSpaController.initScreenSpa();
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