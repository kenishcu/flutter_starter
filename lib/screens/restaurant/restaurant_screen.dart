import 'package:flutter_stater/screens/restaurant/widgets/bill_widget.dart';
import 'package:flutter_stater/screens/restaurant/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/restaurant/restaurant_controller.dart';
import '../../layout/main_layout.dart';


class RestaurantScreen extends StatefulWidget {

  const RestaurantScreen({Key? key}): super(key: key);

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {

  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>(debugLabel: '_restaurant');

  Widget _childLeftContent(GlobalKey<AnimatedListState> listKey) {
    return ProductWidget(listKey: listKey);
  }

  Widget _childRightContent(GlobalKey<AnimatedListState> listKey) {
    return BillWidget(listKey: listKey);
  }

  @override
  Widget build(BuildContext context) {

    return MainLayout(
      childLeftContent: _childLeftContent(listKey),
      childRightContent: _childRightContent(listKey),
    );
  }
}