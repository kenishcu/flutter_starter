import 'package:flutter/material.dart';
import 'package:itrapp/screens/spa/widgets/product_widget.dart';
import 'package:itrapp/screens/spa/widgets/bill_widget.dart';

import '../../layout/main_layout.dart';


class SpaScreen extends StatefulWidget {

  const SpaScreen({Key? key}): super(key: key);

  @override
  _SpaScreenState createState() => _SpaScreenState();
}

class _SpaScreenState extends State<SpaScreen> {

  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>(debugLabel: '_spa');

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