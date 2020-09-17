import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

final ThemeData hnTheme = buildDefaultTheme();

ThemeData buildDefaultTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: buildDefaultTextTheme(base.textTheme),
    primaryColor: Color(0x7FB069), // Bud Green
    accentColor: Color(0x2B2D42), // Space Cadet
    scaffoldBackgroundColor: Color(0xFAFFFD), // Baby Powder
    cardTheme: CardTheme(
        color: Color(0xEBE9E9), // Platinum
        shadowColor: Color(0xE8F1E4) // Lighter Bud Green
        ),
    buttonColor: Color(0x00A7E1), // Cerulean Crayola
  );
}

TextTheme buildDefaultTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(fontSize: 14),
    bodyText2: TextStyle(fontSize: 12),
  );
}
