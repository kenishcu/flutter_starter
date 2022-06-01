import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/index.dart';
import 'package:get/get.dart';

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
                        color: controller.selectedTab.value == index ? Colors.white : Theme.of(context).colorScheme.onPrimary,
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
                               height: 50,
                               child: Text(controller.outpatient[index].id!.receptionQueueId.toString()),
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
                                 height: 50,
                                 child: Text(controller.inpatient[index].id!.receptionQueueId.toString()),
                               );
                             }
                         ),
                       ))
                   )
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