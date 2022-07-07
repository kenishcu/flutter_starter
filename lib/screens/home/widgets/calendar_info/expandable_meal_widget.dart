import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_stater/models/home/meal/reception_meal_model.dart';
import 'package:flutter_stater/utils/convert.dart';

class ExpandableMealWidget extends StatefulWidget {

  const ExpandableMealWidget({Key? key, required this.listMeal}) : super(key: key);

  final List<ReceptionMealModel> listMeal;

  @override
  _ExpandableMealWidgetState createState() => _ExpandableMealWidgetState();
}

class _ExpandableMealWidgetState extends State<ExpandableMealWidget> {

  final _controller = ScrollController();
  final ScrollPhysics _physics = ClampingScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return  ExpandableNotifier(
        child: ScrollOnExpand(
          child: ExpandablePanel(
            theme: const ExpandableThemeData(
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToExpand: false,
              tapBodyToCollapse: false,
              hasIcon: false,
            ),
            header: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Lịch ăn", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    ExpandableIcon(
                      theme: const ExpandableThemeData(
                        expandIcon: Icons.arrow_right,
                        collapseIcon: Icons.arrow_drop_down,
                        iconColor: Colors.black,
                        iconSize: 28.0,
                        iconRotationAngle: math.pi / 2,
                        iconPadding: EdgeInsets.only(right: 5),
                        hasIcon: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            collapsed: Container(),
            expanded: Container(
              height: widget.listMeal.length * 70,
              width: double.infinity,
              padding: const EdgeInsets.all(0.0),
              child: ListView.builder(
                  controller: _controller,
                  physics: _physics,
                  itemCount: widget.listMeal.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 70,
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(Icons.restaurant, size: 40, color: Theme.of(context).colorScheme.secondary),
                          ),
                          Expanded(
                              flex: 3,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text("Phục vụ ăn ${widget.listMeal[index].mealTypeName}",
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
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
                                child: Text(convertFromUnixToHourString(widget.listMeal[index].usedAt!), style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: 15
                                )),
                              )
                          )
                          ,
                        ],
                      ),
                    );
                  }
              ),
            ),
          ),
        )
    );
  }
}
