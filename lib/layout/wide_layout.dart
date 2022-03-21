import 'package:flutter/material.dart';
import 'package:flutter_stater/widgets/layout/header_widget.dart';
import 'package:flutter_stater/widgets/layout/user_info_widget.dart';

class WideLayout extends StatelessWidget {

  final Widget childLeftContent;
  final Widget childRightContent;

  const WideLayout({Key? key, required this.childLeftContent, required this.childRightContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 40, top: 20, bottom: 40, right: 40),
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: HeaderWidget(),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: childLeftContent,
                    ),
                    flex: 5,
                  )
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 40, right: 20),
              child: Column(
                children: [
                  const Expanded(
                    child: UserInfoWidget(),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: childRightContent,
                    ),
                    flex: 5,
                  )
                ],
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );

  }


}