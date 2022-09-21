import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itrapp/lang/appLocalizations.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
    );
  }
}
