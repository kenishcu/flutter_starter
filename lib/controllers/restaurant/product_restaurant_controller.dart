import 'package:flutter/material.dart';
import 'package:itrapp/adapters/repository/restaurant/restaurant_repository.dart';
import 'package:itrapp/models/restaurant/category_model.dart';
import 'package:itrapp/models/restaurant/item_product_model.dart';
import 'package:itrapp/models/restaurant/payment_type_model.dart';
import 'package:itrapp/models/restaurant/sub_category_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../../models/restaurant/meal_type_model.dart';
import '../../models/restaurant/product_model.dart';
import '../../models/result/result_model.dart';
import '../../utils/convert.dart';
import '../home_controller.dart';
import '../setting_controller.dart';

class ProductRestaurantController extends GetxController with GetTickerProviderStateMixin {

  final GetStorage box;

  final RestaurantRepository restaurantRepository;

  ProductRestaurantController({required this.box, required this.restaurantRepository});

  List<ItemProductModel> itemEs = <ItemProductModel>[].obs;

  List<CategoryModel> myTabs = <CategoryModel>[].obs;

  late AnimationController controllerCircle;

  List<List<SubCategoryModel>> myCategories = <List<SubCategoryModel>>[].obs;

  List<List<ProductModel>> products = <List<ProductModel>>[].obs;

  PaymentTypeModel payment = PaymentTypeModel(paymentTypeId: "1", paymentTypeCode: "CASH", paymentTypeName: "Tiền mặt");

  List<int> selectedCategories = <int>[].obs;

  List<MealTypeModel> mealTypes = <MealTypeModel>[].obs;

  List<TextEditingController> textSearch = <TextEditingController>[].obs;

  late Rx<MealTypeModel> selectedMealType = MealTypeModel().obs;

  late TabController tabController;
  RxInt selectedTab = 0.obs;
  int selectedCategory = 0;
  late ScrollController scrollController;
  DateTime selectedDay = DateTime.now();
  RxInt total = 0.obs;

  RxBool initScreen = false.obs;

  @override
  void onInit() {
    super.onInit();
    controllerCircle = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
    });
    controllerCircle.repeat(reverse: true);
    scrollController = ScrollController();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    // listKey.currentState!.dispose();
    controllerCircle.dispose();
    super.dispose();
  }

  Future initRestaurant() async {

    await initMealTypes();

    var response = await restaurantRepository.findAllRestaurantCate();
    if(response.status == true) {
      myTabs = [];
      if(response.results != null && response.results.length > 0) {
        response.results.forEach((e) async => {
          myTabs.add(CategoryModel.fromJson(e))
        });
      }

      for (var element in myTabs) {
        TextEditingController textEdit = TextEditingController();
        textSearch.add(textEdit);
        var responseSubCate = await restaurantRepository.findAllRestaurantSubCate(element.categoryId!);
        if(responseSubCate.status == true) {
          List<SubCategoryModel> subs = [
            SubCategoryModel(categoryName: "Tất cả", categoryId: "", categoryCode: "ALL")
          ];
          for (var e in responseSubCate.results) {
            subs.add(SubCategoryModel.fromJson(e));
          }
          myCategories.add(subs);
          selectedCategories.add(0);
        } else {
          myCategories.add([]);
          selectedCategories.add(0);
        }
      }

      for (var element in myTabs) {
        var responseProduct = await restaurantRepository.findAllProduct("", "", element.categoryId!, 50, 0);
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
  }

  Future initMealTypes() async {

    final res = await restaurantRepository.getAllMealType();

    mealTypes = [];
    if(res.status == true) {
      for (var element in res.results) {
        mealTypes.add(MealTypeModel.fromJson(element));
      }
    }
    selectedMealType.value = mealTypes.last;
  }

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
  }

  void setSelectedMealType (MealTypeModel mealType) {
    selectedMealType.value = mealType;
  }

  void setSelectedCategory(int selectedCategory) async {

    selectedCategories[selectedTab.value] = selectedCategory;

    var responseProduct = await restaurantRepository.findAllProduct(myCategories[selectedTab.value][selectedCategory].categoryId.toString(), "", myTabs[selectedTab.value].categoryId.toString(), 50, 0);
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

  void addItem(ProductModel product,  GlobalKey<AnimatedListState> listKey) {
    ItemProductModel item = ItemProductModel(
        product: product,
        edit: "",
        number: 1
    );

    // listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 500));
    // itemEs.add(item);

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
      int timeOrder = timeToTimeStamp(selectedDay);
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
        // "meal_type": selectedMealType.value.toJson(),
        "order_type" : "DOANNHAHANG",
        "products": list,
      };

      ResultModel res = await restaurantRepository.orderProducts(products);
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

  Future search(String text) async {
    var responseProduct = await restaurantRepository.findAllProduct(myCategories[selectedTab.value][selectedCategory].categoryId.toString(), text, myTabs[selectedTab.value].categoryId.toString(), 50, 0);
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

  Future initScreenRestaurant() async {
    await Future.delayed(const Duration(seconds: 2));
    initScreen.value = true;
  }
}