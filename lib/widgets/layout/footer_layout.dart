import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itrapp/lang/appLocalizations.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxHeight: 40),
        //padding: const EdgeInsets.only(left: 120, top: 0, bottom: 0, right: 20),
        child: DropdownButton(
          hint: Text(AppLocalizations.of(context).getTranslate('language')),
          items: const [
            DropdownMenuItem(
              child: Text("Tiếng Việt"),
              value: 'vi',
            ),
            DropdownMenuItem(
              child: Text("English"),
              value: 'en',
            )
          ],
          onChanged: (value) {
            Get.updateLocale(Locale(value.toString(), ''));
          },
        ));
  }
}
