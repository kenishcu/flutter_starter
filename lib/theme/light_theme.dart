import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {

  /// set up colors theme
  /// background
  const kBackgroundColor =  Color(0xFFE7FFF1);
  const kOnBackgroundColor = Color(0xFF000000);
  const kOnBackgroundVariantColor = Color(0xFF005920);

  /// primary color
  const kPrimaryColor =  Color(0xFF96FABA);
  const kOnPrimaryColor = Color(0xFF000000);
  const kPrimaryIconColor = Color(0xFF363062);
  const kTextColor = Color(0xFF000000);

  /// secondary color
  const kSecondaryColor = Color(0xFFB20069);
  const kOnSecondaryColor = Color(0xFFFFFFFF);
  const kSecondaryVariantColor = Color(0xFFF20078);
  const kSecondaryVariant2Color = Color(0xFFE5BDD8);

  /// surface
  const kSurfaceColor = Color(0xFF96FABA);
  const kSurfaceVariantColor = Color(0xFFF4E5EF);

  ///
  const kInActiveColor = Color(0xFFB5B5B5);
  const kSubTitleColor = Color(0xFF0E0F0E);
  const kListSubColor = Color(0xFFD9FFD6);
  const kErrorColor = Color(0xFF363062);
  const kCardColor = Color(0xFF363062);
  const kButtonColor = Color(0xFF363062);

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
    brightness: Brightness.light,
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
    colorScheme: const ColorScheme.light().copyWith(
      primary: kTextColor,
      onPrimary: kPrimaryColor,
      primaryVariant: kOnBackgroundVariantColor,
      secondary: kSecondaryColor,
      secondaryContainer: kSecondaryVariant2Color,
      secondaryVariant: kSecondaryVariantColor,
      background: kBackgroundColor,
      onBackground: kOnBackgroundColor,
      onSurface: kSurfaceVariantColor,
      surface: kSurfaceColor,
      error: kErrorColor,
    ),
    toggleableActiveColor: kPrimaryColor,
    backgroundColor: kBackgroundColor,
    textTheme: _basicTextTheme(base.textTheme),
    cardColor: kCardColor,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: kTextColor,
      ),
    ),
  );
}
