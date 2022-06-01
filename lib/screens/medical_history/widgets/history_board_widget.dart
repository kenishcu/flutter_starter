import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/index.dart';
import 'package:get/get.dart';

import '../../../utils/convert.dart';

class HistoryBoardWidget extends StatefulWidget {

  const HistoryBoardWidget({Key? key}): super(key: key);

  @override
  _HistoryBoardWidgetState createState() => _HistoryBoardWidgetState();
}

class _HistoryBoardWidgetState extends State<HistoryBoardWidget> {

  MedicalHistoryController controller = Get.find<MedicalHistoryController>();

  Widget _menuBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
        ),
      ),
      child: Obx(() => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List<Widget>.generate(controller.myTabs.length, (index) {
            return SizedBox(
                width: 150,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    controller.setSelectedTab(index);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: controller.selectedTab.value == index ? Theme.of(context).colorScheme.surfaceVariant : Theme.of(context).colorScheme.onPrimary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)
                        ),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(controller.myTabs[index], style: const TextStyle(
                              color: Colors.black,
                              fontWeight:  FontWeight.bold
                          ))
                      )
                  ),
                )
            );
          })
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
            child: Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text("Trang chủ > Bệnh sử",  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
             flex: 1,
             child:  Obx(() => controller.initScreen.value ? SizedBox(
               width: double.infinity,
               height: double.infinity,
               child: Column(
                 children: [
                   SizedBox(
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20.0),
                       child: _menuBar(context),
                     ),
                   ),
                   const SizedBox(
                     height: 10,
                   ),
                   Expanded(
                       flex: 1,
                       child: Obx(() => controller.selectedTab.value == 0 ? Container(
                         width: double.infinity,
                         height: double.infinity,
                         decoration: const BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(20),
                               bottomRight: Radius.circular(20)
                           ),
                         ),
                         child: ListView.builder(
                           itemCount: controller.outpatient.length,
                           itemBuilder: (BuildContext context, int index) {
                             return SizedBox(
                               height: 55,
                               child: Container(
                                 margin: const EdgeInsets.only(left: 20, right: 20),
                                 padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                 decoration: const BoxDecoration(
                                     border: Border(
                                         bottom: BorderSide(
                                             color: Colors.grey,
                                             width: 0.8
                                         )
                                     )
                                 ),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     SizedBox(
                                       height: 25,
                                       child: Text(
                                           controller.outpatient[index].datas!.first.datas!.first.serviceName.toString(),
                                           textAlign: TextAlign.center,
                                           style: const TextStyle(
                                               fontSize: 14,
                                               fontWeight: FontWeight.w500,
                                               color: Colors.black
                                           )
                                       ),
                                     ),
                                     SizedBox(
                                       height: 20,
                                       child: Text(convertFromUnixToDatetime(controller.outpatient[index].id!.currentDayTime!),
                                           style: TextStyle(
                                               fontSize: 11,
                                               fontWeight: FontWeight.w400,
                                               color: Theme.of(context).colorScheme.secondary
                                           )
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                             );
                           }
                         ),
                       ): Container(
                         width: double.infinity,
                         height: double.infinity,
                         decoration: const BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(20),
                               bottomRight: Radius.circular(20)
                           ),
                         ),
                         child: ListView.builder(
                             itemCount: controller.inpatient.length,
                             itemBuilder: (BuildContext context, int index) {
                               return SizedBox(
                                 height: 55,
                                 child: Container(
                                   margin: const EdgeInsets.only(left: 20, right: 20),
                                   padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                   decoration: const BoxDecoration(
                                       border: Border(
                                           bottom: BorderSide(
                                               color: Colors.grey,
                                               width: 0.8
                                           )
                                       )
                                   ),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       SizedBox(
                                         height: 25,
                                         child: Text(
                                             controller.inpatient[index].datas!.first.datas!.first.serviceName.toString(),
                                             textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                              )
                                         ),
                                       ),
                                       SizedBox(
                                         height: 20,
                                         child: Text(convertFromUnixToDatetime(controller.inpatient[index].id!.currentDayTime!),
                                             style: TextStyle(
                                                 fontSize: 11,
                                                 fontWeight: FontWeight.w400,
                                                 color: Theme.of(context).colorScheme.secondary
                                             )
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               );
                             }
                         ),
                       ))
                   ),
                   const SizedBox(
                     height: 10,
                   ),
                 ],
               ),
             ): Container()
             )
          )
        ],
      ),
    );
  }

}