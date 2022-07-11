import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/controllers/home_controller.dart';
import 'package:itrapp/screens/home/widgets/calendar_info/expandable_meal_widget.dart';
import 'package:itrapp/screens/home/widgets/calendar_info/expandable_pharma_widget.dart';
import 'package:itrapp/screens/home/widgets/calendar_info/expandable_treatment_widget.dart';
import 'package:get/get.dart';

class CalendarWidget extends StatefulWidget {

  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {

  HomeController controller = Get.find<HomeController>();

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
            return weekDay == index + 1 ? SizedBox(
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
      child: SingleChildScrollView(
        child: Container(
          height: 420,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 20.0),
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
                  child: Obx(() => ListView(
                    children: <Widget>[
                      controller.calendarInfo[controller.selectedDay.value]['data']!['meal'] != null && controller.calendarInfo[controller.selectedDay.value]['data']!['meal'].length > 0 ? ExpandableMealWidget(listMeal: controller.listMeal) : Container(),

                      controller.calendarInfo[controller.selectedDay.value]['data']['treatment'] != null &&controller.calendarInfo[controller.selectedDay.value]['data']['treatment'].length > 0 ? ExpandableTreatmentWidget(listTreatment: controller.listTreatment) : Container(),

                      controller.calendarInfo[controller.selectedDay.value]['data']['pharma'] != null &&controller.calendarInfo[controller.selectedDay.value]['data']['pharma'].length > 0 ? ExpandablePharmaWidget(listPharma: controller.listPharma) : Container()
                    ],
                  ))
              )
            ],
          ),
        ),
      ),
    );
  }
}