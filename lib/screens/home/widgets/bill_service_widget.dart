import 'package:flutter/material.dart';

class BillServiceWidget extends StatelessWidget {

  const BillServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).colorScheme.surface
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                    child: const Text("Theo dõi bản kê", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    )),
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).colorScheme.secondary
                    ),
                    child: TextButton(
                      onPressed: () {  },
                      child: Text(
                        "Xem chi tiết".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Container(
                height: 50,
                width: double.infinity,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Tổng tạm tính: 0" , style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}