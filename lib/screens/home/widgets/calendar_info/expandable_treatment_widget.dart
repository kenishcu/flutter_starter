import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_stater/utils/convert.dart';

import '../../../../models/home/treatment/reception_treatment_model.dart';
import '../../../../models/home/treatment/treatment_info_model.dart';

class ExpandableTreatmentWidget extends StatefulWidget {

  const ExpandableTreatmentWidget({Key? key, required this.listTreatment}) : super(key: key);

  final List<TreatmentInfoModel> listTreatment;

  @override
  _ExpandableTreatmentWidgetState createState() => _ExpandableTreatmentWidgetState();
}

class _ExpandableTreatmentWidgetState extends State<ExpandableTreatmentWidget> {

  @override
  Widget build(BuildContext context) {
    return  ExpandableNotifier(
        child: ScrollOnExpand(
          child: ExpandablePanel(
            theme: const ExpandableThemeData(
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToExpand: true,
              tapBodyToCollapse: true,
              hasIcon: false,
            ),
            header: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Lịch điều trị", style: TextStyle(
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
              height: widget.listTreatment.length * 70,
              width: double.infinity,
              padding: const EdgeInsets.all(0.0),
              child: ListView.builder(
                  itemCount: widget.listTreatment.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 70,
                      child: Container(
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
                              child: Icon(Icons.medical_services, size: 40, color: Theme.of(context).colorScheme.secondary),
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
                                          child: Text("${widget.listTreatment[index].serviceName}",
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
                                          child: Text("Tại ${widget.listTreatment[index].roomNameToDo}",
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
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
                                  child: Text(convertFromUnixToHourString(widget.listTreatment[index].currentDayTime!), style: TextStyle(
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
          ),
        )
    );
  }
}
