import 'package:flutter/material.dart';
import 'package:flutter_stater/adapters/repository/loan_service/loan_service_repository.dart';
import 'package:flutter_stater/controllers/setting_controller.dart';
import 'package:flutter_stater/models/loan_service/loan_service_model.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/loan_service/category_model.dart';
import '../models/loan_service/item_product_model.dart';
import '../utils/convert.dart';
import 'home_controller.dart';

class LoanServiceController extends GetxController with GetSingleTickerProviderStateMixin {

  final GetStorage box;

  final LoanServiceRepository loanServiceRepository;

  LoanServiceController(
      {
        required this.box,
        required this.loanServiceRepository
      }
  );

  RxInt total = 0.obs;

  late ScrollController scrollController;

  DateTime selectedDay = DateTime.now();

  List<ItemProductModel> itemEs = <ItemProductModel>[].obs;

  List<CategoryModel> myTabs = <CategoryModel>[].obs;

  List<List<LoanServiceModel>> products = <List<LoanServiceModel>>[].obs;

  List<TextEditingController> textSearch = <TextEditingController>[].obs;

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  late TabController tabController;

  RxInt selectedTab = 0.obs;

  RxBool initScreen = false.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    listKey.currentState!.dispose();
    super.dispose();
  }

  Future initLoanServiceInfo() async{

    ResultModel res = await loanServiceRepository.getAllCategories();

    if(res.status == true) {
      myTabs = [];
      if(res.results != null && res.results.length > 0) {
        res.results.forEach((e) async => {
          myTabs.add(CategoryModel.fromJson(e))
        });
        myTabs = myTabs.where((element) => element.status == 1).toList();
      }
    }

    for (var element in myTabs) {
      TextEditingController textEdit = TextEditingController();
      textSearch.add(textEdit);
      var responseProduct = await loanServiceRepository.getAllItem(element.id!, "");
      if(responseProduct.status == true) {
        List<LoanServiceModel> ps = [];
        for (var p in responseProduct.results) {
          ps.add(LoanServiceModel.fromJson(p));
        }
        products.add(ps);
      } else {
        products.add([]);
      }
    }

    initScreen.value = true;
  }

  void addItem(LoanServiceModel product,  GlobalKey<AnimatedListState> listKey) {
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
  }

  void editProduct(ItemProductModel item, String edit, int index) {
    ItemProductModel p = itemEs[index].copyWith(
        product: itemEs[index].product,
        edit: edit,
        number: (itemEs[index].number!));
    itemEs[index] = p;
  }

  Future order(GlobalKey<AnimatedListState> listKey) async {
    if(itemEs.isNotEmpty) {
      List<Map<String, dynamic>> list = [];
      for (var element in itemEs) {
        LoanServiceModel pro =
        LoanServiceModel(
            id: element.product?.id,
            serviceCode: element.product?.serviceCode,
            serviceName: element.product?.serviceName,
            categoryId: element.product?.categoryId,
            categoryCode: element.product?.categoryCode,
            categoryName: element.product?.categoryName,
            defaultQuantity: element.product?.defaultQuantity,
            imageUrl: element.product?.imageUrl,
            status: element.product?.status,
            price: element.product?.price,
            quantity: element.number,
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
        "reception_queue_id": receptionQueueId,
        "status": "TODO",
        "status_name": "Chưa xử lý",
        "used_at": timeOrder,
        "services": list,
      };
      ResultModel res = await loanServiceRepository.order(products);
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

  void plusItem(int index) {
    ItemProductModel p = itemEs[index].copyWith(
        product: itemEs[index].product,
        edit: itemEs[index].edit,
        number: ( itemEs[index].number! + 1));
    itemEs[index] = p;
  }

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
  }

  Future search(String text) async {
    var responseProduct = await loanServiceRepository.getAllItem(myTabs[selectedTab.value].id!, text);
    if(responseProduct.status == true) {
      List<LoanServiceModel> ps = [];
      for (var p in responseProduct.results) {
        ps.add(LoanServiceModel.fromJson(p));
      }
      products[selectedTab.value] = ps;
    } else {
      products[selectedTab.value] = [];
    }
  }
}
