import 'package:itrapp/routes/app_pages.dart';
import 'package:itrapp/theme/dart_theme.dart';
import 'package:itrapp/theme/light_theme.dart';
import 'package:get/get.dart';
import 'package:itrapp/controllers/index.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'container.dart';

class App extends GetView<AppController> {

  static init() async {
    await setup();
  }

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: "IPTV",
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor:  1.0),
            child: child!
        );
      },
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      themeMode: controller.getThemeMode(),
      defaultTransition: Transition.fadeIn,

      //Setup lang
      locale: const Locale('vi'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('vi', ''),
      ],
      localeResolutionCallback:
          (Locale? deviceLocale, Iterable<Locale> supportedLocales) =>
      deviceLocale != null &&
          ['en', 'vi'].contains(deviceLocale.languageCode)
          ? deviceLocale
          : supportedLocales.first,
      // Misc
      debugShowCheckedModeBanner: false,
    );
  }
}