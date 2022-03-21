import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {

  const UserInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset("assets/img/avatar.png"),
          ),
          SizedBox(
            child: Container(
              height: 60,
              margin: const EdgeInsets.only(left: 20.0),
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Nguyễn Minh Hạnh", overflow: TextOverflow.ellipsis
                      ,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
                  Text("Mã y tế: 01234567890", style: TextStyle(
                    fontSize: 14,
                  ))
                ],
              ),

            ),
          )
        ],
      ),
    );
  }

}