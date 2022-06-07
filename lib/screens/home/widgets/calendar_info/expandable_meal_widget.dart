import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stater/models/home/meal/reception_meal_model.dart';

class ExpandableMealWidget extends StatefulWidget {

  const ExpandableMealWidget({Key? key, required this.listMeal}) : super(key: key);

  final List<ReceptionMealModel> listMeal;

  @override
  _ExpandableMealWidgetState createState() => _ExpandableMealWidgetState();
}

class _ExpandableMealWidgetState extends State<ExpandableMealWidget> {


  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return Card(
      // animation: animation,
      // title: "Phục vụ ăn",
      // subTitle: "Tại phòng",
      // iconData: Icons.restaurant,
      // iconColor: Theme.of(context).colorScheme.secondary,
      // backgroundColor: Theme.of(context).colorScheme.onSurface,
      // shadowColor: Theme.of(context).colorScheme.secondaryContainer,
      // time: "12:00-13:00",
      // onTap: () {
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: const SizedBox(
        height: 50,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Lịch ăn"
          ),
        ),
      ),
      collapsed: Container(),
        expanded: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
              itemCount: widget.listMeal.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 50,
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.notifications, size: 28, color: Theme.of(context).colorScheme.secondary),
                        ),
                        Expanded(
                            flex: 3,
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 25,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text("Phục vụ ăn trưa",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: const Text("Tại phòng",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 12
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text("12:00 - 13:00", style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontSize: 15
                              )),
                            )
                        )
                        ,
                      ],
                    ),
                  ),
                );
              }
          ),
        ),
    );
  }
}
