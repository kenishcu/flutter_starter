// import 'package:flutter/material.dart';
// import 'package:flutter_stater/controllers/home_controller.dart';
// import 'package:flutter_stater/models/home/treatment/treatment_info_model.dart';
// import 'package:get/get.dart';
//
// import 'animated_list_utils.dart';
//
// class AnimatedTreatmentListWidget extends GetView<HomeController> {
//
//   const AnimatedTreatmentListWidget({Key? key}) : super(key: key);
//
//   Widget _buildItem(
//       BuildContext context, int index, Animation<double> animation) {
//
//     TreatmentInfoModel treatment = TreatmentInfoModel.fromJson(controller.calendarInfo[controller.selectedDay.value]['data']['treatment'][index]);
//     return CardItem(
//       animation: animation,
//       title: "${treatment.serviceName}",
//       subTitle: "Toà A",
//       iconData: Icons.medical_services,
//       iconColor: Theme.of(context).colorScheme.secondary,
//       backgroundColor: Theme.of(context).colorScheme.onSurface,
//       shadowColor: Theme.of(context).colorScheme.secondaryContainer,
//       time: "9:00-10:00",
//       onTap: () {
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 30,
//           width: double.infinity,
//           child: Container(
//             padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const SizedBox(
//                   width: 200,
//                   child: Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Text("Lịch điều trị", style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold
//                     )),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 40,
//                   child: controller.shrinkTreatmentList == true ? IconButton(
//                     padding: const EdgeInsets.all(0),
//                     icon: const Icon(Icons.arrow_right, size: 30,),
//                     onPressed: controller.showListTreatment,
//                     tooltip: 'shrink list item',
//                   ) : IconButton(
//                     padding: const EdgeInsets.all(0),
//                     icon: const Icon(Icons.arrow_drop_down_outlined, size: 30),
//                     onPressed: controller.shrinkListTreatment,
//                     tooltip: 'shrink list item',
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//             flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 16.0, right: 16.0),
//               child: AnimatedList(
//                 key: controller.listKeyTreatment,
//                 initialItemCount: controller.calendarInfo[controller.selectedDay.value]['data']['treatment'].length,
//                 itemBuilder: _buildItem,
//               ),
//             )
//         )
//       ],
//     );
//   }
// }