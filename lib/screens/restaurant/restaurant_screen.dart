import 'package:flutter_stater/screens/restaurant/widgets/bill_widget.dart';
import 'package:flutter_stater/screens/restaurant/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/restaurant/restaurant_controller.dart';
import '../../layout/main_layout.dart';

class RestaurantScreen extends GetView<RestaurantController> {

  const RestaurantScreen({Key? key}): super(key: key);

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