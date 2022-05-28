import 'package:flutter/material.dart';

class DateSelectionWidget extends StatefulWidget {

  const DateSelectionWidget({Key? key}): super(key: key);

  @override
  _DateSelectionWidget createState() => _DateSelectionWidget();
}

class _DateSelectionWidget extends State<DateSelectionWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30),
                        child: Text("Từ ngày", style: TextStyle(
                        )),
                      ),
                    ),
                    SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Container(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0, left: 20.0),
                            child: TextField(
                              style: const TextStyle(fontSize: 15.0),
                              onChanged: (String text) {
                                // controller.search(text);
                              },
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: const Icon(Icons.search),
                                hintText: "",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.black12, width: 20.0),
                                    borderRadius: BorderRadius.circular(25.0)
                                ),
                                fillColor: Colors.white
                              ),
                            )
                        )),
                    SizedBox(
                      height: 100,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 120,
                          height: 60,
                          margin: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: TextButton(
                            onPressed: () {  },
                            child: const Text("Kiểm tra", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
        ),
        const Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
            )
        )
      ],
    );
  }

}