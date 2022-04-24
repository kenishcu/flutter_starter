import 'package:flutter_stater/controllers/food_treatment_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../layout/main_layout.dart';
import 'widgets/bill_widget.dart';
import 'widgets/product_widget.dart';


class FoodTreatmentScreen extends GetView<FoodTreatmentController> {

  const FoodTreatmentScreen({Key? key}): super(key: key);

  Widget _childLeftContent() {
    return const ProductWidget();
  }

  Widget _childRightContent() {
    return const BillWidget();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      childLeftContent: _childLeftContent(),
      childRightContent: _childRightContent(),
    );
  }
}