import 'package:flutter/material.dart';
import 'package:flutter_stater/adapters/repository/restaurant/restaurant_repository.dart';
import 'package:flutter_stater/models/restaurant/category_model.dart';
import 'package:flutter_stater/models/restaurant/item_product_model.dart';
import 'package:flutter_stater/models/restaurant/sub_category_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../../models/restaurant/product_model.dart';

class ProductRestaurantController extends GetxController with GetSingleTickerProviderStateMixin {

  final GetStorage box;

  final RestaurantRepository restaurantRepository;

  ProductRestaurantController({required this.box, required this.restaurantRepository});

  List<ItemProductModel> itemEs = <ItemProductModel>[].obs;

  List<CategoryModel> myTabs = <CategoryModel>[].obs;

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  List<List<SubCategoryModel>> myCategories = <List<SubCategoryModel>>[].obs;

  List<List<ProductModel>> products = <List<ProductModel>>[].obs;

  List<int> selectedCategories = <int>[].obs;

  late TabController tabController;
  RxInt selectedTab = 0.obs;
  int selectedCategory = 0;
  DateTime selectedDay = DateTime.now();
  RxInt total = 0.obs;

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

  Future initRestaurant() async {
    var response = await restaurantRepository.findAllRestaurantCate();
    if(response.status == true) {
      myTabs = [];
      if(response.results != null && response.results.length > 0) {
        response.results.forEach((e) async => {
          myTabs.add(CategoryModel.fromJson(e))
      });
      }

      for (var element in myTabs) {
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

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
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

  void addItem(ProductModel product) {
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
        // controller.items = [...controller.items];
        // print(controller.items.toString());
      }
    } else {
      listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 500));
      itemEs.add(item);
    }
  }

  void subItem(int index){
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
    }
  }

}