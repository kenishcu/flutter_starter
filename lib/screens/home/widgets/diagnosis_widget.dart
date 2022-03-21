import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnosisWidget extends StatelessWidget {
  
  const DiagnosisWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).colorScheme.surface
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: 'Chẩn đoán điều trị : ',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                          children: const <TextSpan>[
                            TextSpan(text: 'Bệnh tả', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: 'Mức chăm sóc : ',
                          style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onBackground),
                          children: const <TextSpan>[
                            TextSpan(text: 'Mức ICU', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            child: Container(
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Theme.of(context).colorScheme.surface
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        text: 'Thông tin dị ứng : ',
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        text: 'Mocphine',
                                        style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onBackground),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          flex: 6,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Theme.of(context).colorScheme.surface
                            ),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      "Chú ý",
                                      style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground, fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      child: const Icon(
                                        Icons.report_problem,
                                        color: Color(0xFFE46239),
                                        size: 24,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text: 'Tránh đi lại',
                                    style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ),
                        ),
                        flex: 4,
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
  
}