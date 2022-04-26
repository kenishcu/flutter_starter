import 'package:flutter/material.dart';
import 'package:flutter_stater/adapters/repository/loan_service/loan_service_repository.dart';
import 'package:flutter_stater/models/loan_service/loan_service_model.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/loan_service/category_model.dart';

class LoanServiceController extends GetxController with GetSingleTickerProviderStateMixin {

  final GetStorage box;

  final LoanServiceRepository loanServiceRepository;

  LoanServiceController(
      {
        required this.box,
        required this.loanServiceRepository
      }
  );

  List<CategoryModel> myTabs = <CategoryModel>[].obs;
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  late TabController tabController;
  RxInt selectedTab = 0.obs;

  List<List<LoanServiceModel>> products = <List<LoanServiceModel>>[].obs;

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
      }
      for (var element in myTabs) {
        var responseSubCate = await loanServiceRepository.getAllItem(element.id!, "");
      }
    }
  }
}