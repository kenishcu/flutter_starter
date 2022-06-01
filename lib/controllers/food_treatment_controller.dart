import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/setting_controller.dart';
import 'package:flutter_stater/models/food_treatment/meal_type_model.dart';
import 'package:flutter_stater/models/food_treatment/menu_model.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../adapters/repository/food_treatment/food_treatment_repository.dart';
import '../models/food_treatment/item_product_model.dart';
import '../models/food_treatment/product_model.dart';
import '../models/restaurant/payment_type_model.dart';
import '../utils/convert.dart';
import 'home_controller.dart';

class FoodTreatmentController extends GetxController  with GetSingleTickerProviderStateMixin {

  final GetStorage box;

  final FoodTreatmentRepository foodTreatmentRepository;

  FoodTreatmentController({required this.box, required this.foodTreatmentRepository});

  List<ItemProductModel> itemEs = <ItemProductModel>[].obs;

  List<MenuModel> myTabs = <MenuModel>[].obs;

  List<List<ProductModel>> products = <List<ProductModel>>[].obs;

  List<int> selectedCategories = <int>[].obs;

  List<MealTypeModel> mealTypes = <MealTypeModel>[].obs;

  List<TextEditingController> textSearch = <TextEditingController>[].obs;

  late TabController tabController;
  Rx<DateTime> selectedDay = DateTime.now().obs;
  RxInt selectedTab = 0.obs;
  int selectedCategory = 0;
  late int day;

  late Rx<MealTypeModel> selectedMealType = MealTypeModel().obs;

  RxInt total = 0.obs;

  PaymentTypeModel payment = PaymentTypeModel(paymentTypeId: '1', paymentTypeCode: "DEBT", paymentTypeName: 'Điều trị');

  RxBool initScreen = false.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  Future initMealTypes() async {
    final res = await foodTreatmentRepository.getAllMealType();
    mealTypes = [];
    if(res.status == true) {
      for (var element in res.results) {
        mealTypes.add(MealTypeModel.fromJson(element));
      }
    }
    selectedMealType.value = mealTypes[2];
  }

  Future initFoodTreatment() async {

    await initMealTypes();

    day = DateTime.parse(selectedDay.toString()).weekday;

    final res = await foodTreatmentRepository.findAllMenu();
    if (res.status ==  true) {
      myTabs = [];
      if(res.results != null && res.results.length > 0) {
        res.results.forEach((e) => {
          myTabs.add(MenuModel.fromJson(e))
        });
        myTabs = myTabs.where((element) => element.orderType == 'DOANDIEUTRI').toList();
      }

      for (var element in myTabs) {
        TextEditingController textEdit = TextEditingController();
        textSearch.add(textEdit);
        var responseProduct= await foodTreatmentRepository.getProductByDay(day, selectedMealType.value.mealTypeId.toString(), element.id!, "", "");
        if(responseProduct.status == true) {
          List<ProductModel> ps = [];
          for (var p in responseProduct.results) {
            ps.add(ProductModel.fromJson(p));
          }
          products.add(ps);
        } else {
          products.add([]);
        }
      }
    }
    initScreen.value = true;
  }

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
  }

  void addItem(ProductModel product,  GlobalKey<AnimatedListState> listKey) {

    ItemProductModel item = ItemProductModel(
        product: product,
        edit: "",
        number: 1
    );

    int cnt = -1;
    if (itemEs.isNotEmpty) {
      for(int i = 0; i< itemEs.length; i ++) {
        if (item.product!.id.toString() == itemEs[i].product!.id.toString()) {
          cnt = i;
        }
      }
      if(cnt == -1) {
        listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 500));
        itemEs.add(item);
      } else {
        ItemProductModel p = itemEs[cnt].copyWith(product: item.product, edit: itemEs[cnt].edit,
            number: (itemEs[cnt].number! + 1));
        itemEs[cnt] = p;
        // controller.items = [...controller.items];
        // print(controller.items.toString());
      }
    } else {
      listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 500));
      itemEs.add(item);
    }

    countTotal();
  }


  void subItem(int index, GlobalKey<AnimatedListState> listKey) {
    if(itemEs[index].number! > 1) {
      ItemProductModel p = itemEs[index].copyWith(
          product: itemEs[index].product,
          edit: itemEs[index].edit,
          number: ( itemEs[index].number! - 1));
      itemEs[index] = p;
    } else {
      listKey.currentState?.removeItem(index,
              (BuildContext context, Animation<double> animation) {
            return Container();
          });
      itemEs.removeAt(index);
    }
    countTotal();
  }

  void plusItem(int index) {
    ItemProductModel p = itemEs[index].copyWith(
        product: itemEs[index].product,
        edit: itemEs[index].edit,
        number: ( itemEs[index].number! + 1));
    itemEs[index] = p;
    countTotal();
  }

  void countTotal() {
    if(itemEs.isNotEmpty) {
      var t = 0;
      for (var element in itemEs) {
        var price = element.product?.price;
        t += (element.number! * price!);
      }
      total.value = t;
    } else {
      total.value = 0;
    }
  }

  void editProduct(ItemProductModel item, String edit, int index) {
    ItemProductModel p = itemEs[index].copyWith(
        product: itemEs[index].product,
        edit: edit,
        number: (itemEs[index].number!));
    itemEs[index] = p;
  }

  Future search(String text) async {
    day = DateTime.parse(selectedDay.toString()).weekday;
    var responseProduct = await foodTreatmentRepository.getProductByDay(day, selectedMealType.value.mealTypeId.toString(),  myTabs[selectedTab.value].id!, "", text);
    if(responseProduct.status == true) {
      List<ProductModel> ps = [];
      for (var p in responseProduct.results) {
        ps.add(ProductModel.fromJson(p));
      }
      products[selectedTab.value] = ps;
    } else {
      products[selectedTab.value] = [];
    }
  }

  Future<bool> order(GlobalKey<AnimatedListState> listKey) async {
    if (itemEs.isNotEmpty) {
      List<Map<String, dynamic>> list = [];
      for (var element in itemEs) {
        ProductModel pro =
        ProductModel(
            id: element.product?.id,
            productCode: element.product?.productCode,
            productName: element.product?.productName,
            categoryDailyParentId: element.product?.categoryDailyParentId,
            categoryDailyParentCode: element.product?.categoryDailyParentCode,
            categoryDailyParentName: element.product?.categoryDailyParentName,
            categoryDailyId: element.product?.categoryDailyId,
            categoryDailyCode: element.product?.categoryDailyCode,
            categoryDailyName: element.product?.categoryDailyName,
            categoryParentId: element.product?.categoryParentId,
            categoryParentCode: element.product?.categoryParentCode,
            categoryParentName: element.product?.categoryParentName,
            categoryId: element.product?.categoryId,
            categoryCode: element.product?.categoryCode,
            categoryName: element.product?.categoryName,
            status: 'BOOKED',
            price: element.product?.price,
            quantity: element.number,
            discount: element.product?.discount,
            discountRate: element.product?.discountRate,
            note: element.edit
        );
        list.add(pro.toJson());
      }

      HomeController homeController = Get.find<HomeController>();
      SettingController settingController = Get.find<SettingController>();
      String? receptionQueueId = homeController.patientInfo.receptionQueueId;
      int timeOrder = timeToTimeStamp(selectedDay.value);
      Map<String, dynamic> products = {
        "patient_id": homeController.patientInfo.patientId,
        "patient_fullname": homeController.patientInfo.patientName,
        "bed_id": settingController.selectedBed.value.bedId,
        "bed_name": settingController.selectedBed.value.bedName,
        "room_id": settingController.selectedRoom.value.roomId,
        "room_name":  settingController.selectedRoom.value.roomName,
        "parent_id": settingController.selectedDepartment.value.parentId,
        "parent_name": settingController.selectedDepartment.value.parentName,
        "reception_queue_id": receptionQueueId,
        "status": "BOOKED",
        "used_at": timeOrder,
        "payment_result": payment.paymentTypeCode,
        "meal_type": selectedMealType.value.toJson(),
        "order_type" : "DOANDIEUTRI",
        "products": list,
      };

      ResultModel res = await foodTreatmentRepository.orderProducts(products);
      if(res.status == true) {
        for (var i = 0; i <= itemEs.length - 1; i++) {
          listKey.currentState?.removeItem(0,
                  (BuildContext context, Animation<double> animation) {
                return Container();
              });
        }
        itemEs.clear();
        countTotal();
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future setSelectedMealType (MealTypeModel mealType) async {
    selectedMealType.value = mealType;
    day = DateTime.parse(selectedDay.toString()).weekday;
    var responseProduct= await foodTreatmentRepository.getProductByDay(day, selectedMealType.value.mealTypeId.toString(), myTabs[selectedTab.value].id!, "", "");
    if(responseProduct.status == true) {
      List<ProductModel> ps = [];
      for (var p in responseProduct.results) {
        ps.add(ProductModel.fromJson(p));
      }
      products[selectedTab.value] = ps;
    } else {
      products[selectedTab.value] = [];
    }
  }

  Future setSelectedDate(DateTime date) async {
    selectedDay.value = date;
    day = DateTime.parse(selectedDay.toString()).weekday;
    var responseProduct= await foodTreatmentRepository.getProductByDay(day, selectedMealType.value.mealTypeId.toString(), myTabs[selectedTab.value].id!, "", "");
    if(responseProduct.status == true) {
      List<ProductModel> ps = [];
      for (var p in responseProduct.results) {
        ps.add(ProductModel.fromJson(p));
      }
      products[selectedTab.value] = ps;
    } else {
      products[selectedTab.value] = [];
    }
  }
}