import 'package:flutter/material.dart';

class BedTypeWidget extends StatelessWidget {

  const BedTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Theme.of(context).colorScheme.surface
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.location_on,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 30,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Loại giường VIP 1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Phòng 2, Tầng 3"
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).colorScheme.background
                ),
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: 'Bác sĩ : ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                    children: const <TextSpan>[
                      TextSpan(text: 'Nguyễn Quang Hiệu', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).colorScheme.background
                ),
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: 'Y tá : ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                    children: const <TextSpan>[
                      TextSpan(text: 'Trần Ngọc Anh', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

}