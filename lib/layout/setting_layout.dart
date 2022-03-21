import 'package:flutter/material.dart';
import 'package:flutter_stater/widgets/layout/header_setting_widget.dart';

class SettingLayout extends StatelessWidget {

  final Widget childContent;

  const SettingLayout({Key? key ,
    required this.childContent
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 40, top: 40, bottom: 40, right: 40),
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor
              ),
              child: const HeaderSettingWidget(),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              child: childContent,
            ),
            flex: 5,
          )
        ],
      )
    );
  }

}