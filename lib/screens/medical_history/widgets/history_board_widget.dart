import 'package:flutter/material.dart';

class HistoryBoardWidget extends StatefulWidget {

  const HistoryBoardWidget({Key? key}): super(key: key);

  @override
  _HistoryBoardWidgetState createState() => _HistoryBoardWidgetState();
}

class _HistoryBoardWidgetState extends State<HistoryBoardWidget> {

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
             child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 40, top: 20),
                          child: Text(
                            "Bệnh sử",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        )
                    )
                  ],
                )
             )
          )
        ],
      ),
    );
  }

}