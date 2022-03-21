import 'package:flutter/material.dart';
import 'package:flutter_stater/widgets/button/button_service_widget.dart';

class ServiceWidget extends StatelessWidget {

  const ServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.only(right: 20.0),
        margin: const EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).colorScheme.surface
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: double.infinity,
                height: 80,
                child: Container(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: const Text("Dịch vụ", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                )
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount: 3,
                    children: <Widget>[
                      ButtonServiceWidget(
                        iconData: Icons.restaurant,
                        buttonTitle: 'Nhà hàng',
                        onPressed: () {  },
                      ),
                      ButtonServiceWidget(
                        iconData: Icons.ramen_dining_outlined,
                        buttonTitle: 'Đồ ăn điều trị',
                        onPressed: () {  },
                      ),
                      ButtonServiceWidget(
                        iconData: Icons.checkroom_outlined,
                        buttonTitle: 'Mượn đồ',
                        onPressed: () {  },
                      ),
                      ButtonServiceWidget(
                        iconData: Icons.payments_outlined,
                        buttonTitle: 'Xem bảng kê & thanh toán',
                        onPressed: () {  },
                      ),
                      ButtonServiceWidget(
                        iconData: Icons.medical_services_outlined,
                        buttonTitle: 'Bệnh sử',
                        onPressed: () {  },
                      ),
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}