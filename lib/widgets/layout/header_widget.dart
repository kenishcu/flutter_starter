import 'package:flutter/material.dart';
import 'package:itrapp/widgets/button/button_header_widget.dart';
import 'package:get/get.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import '../../routes/app_pages.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget(
      {Key? key, required this.onOpenDraw, required this.onCallCleanService})
      : super(key: key);

  final VoidCallback onOpenDraw;

  final VoidCallback onCallCleanService;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset("assets/img/app-logo.png"),
                width: 60,
                height: 60,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(AppLocalizations.of(context).getTranslate('hong_ngoc_gerenal_hospital').toUpperCase(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primaryVariant,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(AppLocalizations.of(context).getTranslate('the_place_to_trust')),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonHeaderWidget(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  iconData: Icons.home,
                  buttonTitle:
                      AppLocalizations.of(context).getTranslate('home'),
                ),
                ButtonHeaderWidget(
                  iconData: Icons.notifications,
                  buttonTitle: AppLocalizations.of(context).getTranslate('notifications'),
                  onPressed: onOpenDraw,
                ),
                ButtonHeaderWidget(
                    iconData: Icons.cleaning_services,
                    buttonTitle: AppLocalizations.of(context).getTranslate('cleaning_services'),
                    onPressed: onCallCleanService),
              ],
            ))
      ],
    );
  }
}
