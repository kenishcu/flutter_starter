import 'package:flutter/material.dart';

ThemeData darkTheme(BuildContext context) {

  /// set up colors theme
  const kBackgroundColor =  Colors.white;
  const kPrimaryColor =   Colors.white;
  const kPrimaryIconColor = Colors.white;
  const kTextColor = Colors.white;

  const kSecondaryColor =  Colors.white;
  const kErrorColor =  Colors.white;
  const kCardColor =  Colors.white;
  const kButtonColor =  Colors.white;

  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      caption: base.caption!.copyWith(
        color: kTextColor,
      ),
      bodyText1: base.bodyText1!.copyWith(
        color: kTextColor,
      ),
      bodyText2: base.bodyText2!.copyWith(
        color: kTextColor,
      ),
      subtitle1: base.subtitle2!.copyWith(
        color: kTextColor,
      ),
      subtitle2: base.bodyText1!.copyWith(
        color: kTextColor,
      ),
      headline6: base.headline6!.copyWith(
        color: kTextColor,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  ThemeData base = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.grey,
  );


  return base.copyWith(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: kTextColor),
      foregroundColor: kTextColor,
      toolbarTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    toggleableActiveColor: kPrimaryColor,
    backgroundColor: kBackgroundColor,
    cardColor: kCardColor,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: kTextColor,
      ),
    ),
  );
}
