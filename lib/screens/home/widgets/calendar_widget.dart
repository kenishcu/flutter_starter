import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/home_controller.dart';
import 'package:flutter_stater/screens/home/widgets/calendar_info/animated_meal_list_widget.dart';
import 'package:flutter_stater/screens/home/widgets/calendar_info/animated_treatment_list_widget.dart';
import 'package:get/get.dart';

class CalendarWidget extends GetView<HomeController>  {

  const CalendarWidget({Key? key}) : super(key: key);

  Widget timeline() {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            var d = DateTime.now();
            var weekDay = d.weekday;
            return weekDay == index ? SizedBox(
              width: 43,
              child: GestureDetector(
                onTap: () {
                  controller.setSelectedDayCalendar(index);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 2, left: 2),
                  decoration: controller.selectedDay.value == index ? BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.black
                      )
                  ): BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary
                      )
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 38,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(controller.calendarInfo[index]['dayOfWeek'].toString(), style: const TextStyle(
                            fontSize: 16,
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(controller.calendarInfo[index]['dayOfMonth'].toString(), style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ) : SizedBox(
              width: 45,
              child: GestureDetector(
                onTap: (){
                  controller.setSelectedDayCalendar(index);
                },
                child: Obx(() => Container(
                  decoration: controller.selectedDay.value == index ? BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border:  Border.all(
                          color: Theme.of(context).colorScheme.secondary
                      )
                  ): BoxDecoration(
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 38,
                        width: double.infinity,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(controller.calendarInfo[index]['dayOfWeek'].toString(), style: const TextStyle(
                              fontSize: 16,
                            ),
                            )),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(controller.calendarInfo[index]['dayOfMonth'].toString(), style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          )),
                        ),
                      )
                    ],
                  ),
                )),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: 420,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 80,
                child: timeline()
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Column(
                  children: [
                    controller.calendarInfo[controller.selectedDay.value]['data']!['meals'] != null && controller.calendarInfo[controller.selectedDay.value]['data']!['meals'] > 0 ? const Expanded(
                      flex: 1,
                      child: AnimatedMealListWidget(),
                    ) : Container(),
                    controller.calendarInfo[controller.selectedDay.value]['data']['treatment'] != null &&controller.calendarInfo[controller.selectedDay.value]['data']['treatment'].length > 0 ? const Expanded(
                      flex: 1,
                      child: AnimatedTreatmentListWidget(),
                    ): Container()
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

}