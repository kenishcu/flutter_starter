import 'package:flutter/material.dart';
import 'package:flutter_stater/widgets/button/button_header_widget.dart';

class HeaderWidget extends StatelessWidget {

  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset("assets/img/app-logo.png"),
                width: 60,
                height: 60,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Bệnh viện đa khoa Hồng Ngọc".toUpperCase(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primaryVariant,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text("Nơi gửi trọn niềm tin"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonHeaderWidget(
                  onPressed: () {
                  },
                  iconData: Icons.home,
                  buttonTitle: 'Trang chủ',
                ),
                ButtonHeaderWidget(
                  iconData: Icons.notifications,
                  buttonTitle: 'Thông báo',
                  onPressed: () {
                  },
                ),
                ButtonHeaderWidget(
                  iconData: Icons.cleaning_services,
                  buttonTitle: 'Dọn phòng',
                  onPressed: () {
                  },
                )
              ],
            )
        )
      ],
    );
  }


}