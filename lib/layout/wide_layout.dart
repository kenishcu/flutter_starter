import 'package:flutter/material.dart';
import 'package:flutter_stater/widgets/layout/header_widget.dart';
import 'package:flutter_stater/widgets/layout/user_info_widget.dart';

class WideLayout extends StatefulWidget {

  final Widget childLeftContent;
  final Widget childRightContent;

  const WideLayout({Key? key, required this.childLeftContent, required this.childRightContent}) : super(key: key);

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  Drawer _drawer(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 120,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 180,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Thông báo", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )),
                    ),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded)
                    ),
                  )
                ],
              )
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 50,
                      child: Text(
                        "Xác nhận",
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
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
                  Expanded(
                    child: HeaderWidget(
                      onOpenDraw: () {
                        _key.currentState!.openDrawer();
                      },
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: widget.childLeftContent,
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
                      child: widget.childRightContent,
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
      drawer: _drawer(context),
    );

  }
}