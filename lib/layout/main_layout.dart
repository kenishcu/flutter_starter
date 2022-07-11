import 'package:flutter/material.dart';
import 'package:itrapp/layout/wide_h_layout.dart';

class MainLayout extends StatelessWidget {

  final Widget childLeftContent;

  final Widget childRightContent;

  const MainLayout({Key?  key,
    required this.childLeftContent,
    required this.childRightContent}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return WideHLayout(
        childLeftContent: childLeftContent,
        childRightContent: childRightContent);
  }
}
