import 'package:flutter/material.dart';
import 'package:itrapp/lang/appLocalizations.dart';

class HeaderSettingWidget  extends StatelessWidget {

  const HeaderSettingWidget({Key? key}) : super(key: key);

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
              Column(
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
              )
            ],
          ),
        ),
      ],
    );
  }


}