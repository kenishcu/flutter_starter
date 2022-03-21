import 'package:flutter/material.dart';
import 'package:flutter_stater/layout/wide_layout.dart';

class AdaptiveLayout extends StatelessWidget {

  final Widget childLeftContent;

  final Widget childRightContent;

  const AdaptiveLayout({Key?  key,
    required this.childLeftContent,
    required this.childRightContent}) : super (key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return WideLayout(
        childLeftContent: childLeftContent,
        childRightContent: childRightContent);
  }
}
