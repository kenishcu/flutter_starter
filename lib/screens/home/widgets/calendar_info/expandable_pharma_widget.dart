import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'dart:math' as math;

import 'package:itrapp/models/home/pharma/pharma_info_model.dart';
import 'package:itrapp/utils/convert.dart';

class ExpandablePharmaWidget extends StatefulWidget {

  const ExpandablePharmaWidget({Key? key, required this.listPharma}) : super(key: key);

  final List<PharmaInfoModel> listPharma;

  @override
  _ExpandablePharmaWidgetState createState() => _ExpandablePharmaWidgetState();
}

class _ExpandablePharmaWidgetState extends State<ExpandablePharmaWidget> {

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
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context).getTranslate('medicine_schedule'), style: const TextStyle(
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
              height: widget.listPharma.length * 70,
              width: double.infinity,
              padding: const EdgeInsets.all(0.0),
              child: ListView.builder(
                  controller: _controller,
                  physics: _physics,
                  itemCount: widget.listPharma.length,
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
                              child: Icon(Icons.vaccines, size: 40, color: Theme.of(context).colorScheme.secondary),
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
                                          child: Text("${widget.listPharma[index].quantity} ${widget.listPharma[index].unitName} ${widget.listPharma[index].pharmaName}",
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16
                                              )),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  ),
                                )
                            ),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  // child: Text(convertFromUnixToHourString(widget.listPharma[index].), style: TextStyle(
                                  //     color: Theme.of(context).colorScheme.secondary,
                                  //     fontSize: 15
                                  // )),
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
