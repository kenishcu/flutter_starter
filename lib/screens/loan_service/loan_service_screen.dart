import 'package:flutter/material.dart';
import 'package:itrapp/screens/loan_service/widgets/bill_widget.dart';
import 'package:itrapp/screens/loan_service/widgets/product_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../layout/main_layout.dart';

class LoanServiceScreen extends StatefulWidget {

  const LoanServiceScreen({Key? key}) : super(key: key);

  @override
  _LoanServiceScreenState createState() => _LoanServiceScreenState();
}

class _LoanServiceScreenState extends State<LoanServiceScreen> {

  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>(debugLabel: '_restaurant');

  Widget _childLeftContent(GlobalKey<AnimatedListState> listKey) {
    return ProductWidget(listKey: listKey, );
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