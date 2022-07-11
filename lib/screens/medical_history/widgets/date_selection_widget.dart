import 'package:flutter/material.dart';
import 'package:itrapp/controllers/index.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateSelectionWidget extends StatefulWidget {

  const DateSelectionWidget({Key? key}): super(key: key);

  @override
  _DateSelectionWidget createState() => _DateSelectionWidget();
}

class _DateSelectionWidget extends State<DateSelectionWidget> {

  MedicalHistoryController controller = Get.find<MedicalHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30),
                        child: Text("Từ ngày - Đến ngày", style: TextStyle(
                          fontSize: 18
                        )),
                      ),
                    ),
                    SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Container(
                          height: 40,
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text( DateFormat('dd/MM/yyyy').format(controller.from) + "  -  " + DateFormat('dd/MM/yyyy').format(controller.to),
                                  style: const TextStyle(
                                      fontSize: 18
                                  )),
                            )
                        )),
                  ],
                ),
              ),
            )
        ),
        const Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
            )
        )
      ],
    );
  }

}