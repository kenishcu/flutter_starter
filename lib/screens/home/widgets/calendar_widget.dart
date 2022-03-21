import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarWidget extends StatefulWidget {

  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState  extends State<CalendarWidget> {

  int selectedDay = 1;

  final List<Map<String, dynamic>> calendarInfo = [
    {
      'dayOfWeek': 'T2',
      'dayOfMonth': '',
    },
    {
      'dayOfWeek': 'T3',
      'dayOfMonth': '',
    },
    {
      'dayOfWeek': 'T4',
      'dayOfMonth': '',
    },
    {
      'dayOfWeek': 'T5',
      'dayOfMonth': '',
    },
    {
      'dayOfWeek': 'T6',
      'dayOfMonth': '',
    },
    {
      'dayOfWeek': 'T7',
      'dayOfMonth': '',
    },
    {
      'dayOfWeek': 'CN',
      'dayOfMonth': '',
    }

  ];

  @override
  initState() {
    super.initState();
    addCalendarInfo();
  }

  void addCalendarInfo () {
    var d = DateTime.now();
    var weekDay = d.weekday;
    var firstDayOfWeek = d.subtract(Duration(days: weekDay));
    for(int i = 0; i < 7; i++ ) {
      var day = firstDayOfWeek.add(Duration(days: i));
      calendarInfo[i].update('dayOfMonth', (value) => day.day);
    }
  }

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
              child: Container(
                margin: const EdgeInsets.only(right: 2, left: 2),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  borderRadius: BorderRadius.circular(15.0),
                  border: selectedDay == index ? Border.all(
                    color: Theme.of(context).colorScheme.secondary
                  ): Border.all(
                      color: Colors.white
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 38,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(calendarInfo[index]['dayOfWeek'].toString(), style: const TextStyle(
                            fontSize: 16,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(calendarInfo[index]['dayOfMonth'].toString(), style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ) : SizedBox(
              width: 45,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: selectedDay == index ? Border.all(
                        color: Theme.of(context).colorScheme.secondary
                    ): Border.all(
                      color: Colors.white
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 38,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(calendarInfo[index]['dayOfWeek'].toString(), style: const TextStyle(
                          fontSize: 16,
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(calendarInfo[index]['dayOfMonth'].toString(), style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          timeline()
        ],
      ),
    );
  }

}