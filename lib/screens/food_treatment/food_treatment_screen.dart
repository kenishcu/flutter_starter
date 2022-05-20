import 'package:flutter_stater/controllers/food_treatment_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../layout/main_layout.dart';
import 'widgets/bill_widget.dart';
import 'widgets/product_widget.dart';


class FoodTreatmentScreen extends StatefulWidget{

  const FoodTreatmentScreen({Key? key}): super(key: key);

  @override
  _FoodTreatmentScreenState createState() => _FoodTreatmentScreenState();
}

class _FoodTreatmentScreenState extends State<FoodTreatmentScreen> {

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