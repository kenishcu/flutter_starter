import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itrapp/lang/appLocalizations.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 600,
        ),
        Container(
          margin: const EdgeInsets.only(right: 5, top: 8),
          width: 36,
          child: Image.asset(
              'icons/flags/png/${Localizations.localeOf(context).languageCode == 'en' ? 'gb-nir' : (Localizations.localeOf(context).languageCode == 'vi' ? 'vn' : Localizations.localeOf(context).languageCode)}.png',
              package: 'country_icons'),
        ),
        DropdownButton(
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
        )
      ],
    );
  }
}
