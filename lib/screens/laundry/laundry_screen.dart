import 'package:flutter/material.dart';
import 'package:itrapp/screens/laundry/widgets/product_widget.dart';
import 'package:itrapp/screens/laundry/widgets/bill_widget.dart';

import '../../layout/main_layout.dart';


class LaundryScreen extends StatefulWidget {

  const LaundryScreen({Key? key}): super(key: key);

  @override
  _LaundryScreenState createState() => _LaundryScreenState();
}

class _LaundryScreenState extends State<LaundryScreen> {

  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>(debugLabel: '_laundry');

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