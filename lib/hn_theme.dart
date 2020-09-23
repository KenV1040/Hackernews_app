import 'package:flutter/material.dart';

final ThemeData hnTheme = buildDefaultTheme();

ThemeData buildDefaultTheme() {
  //final creuleanCrayola = Color(0xFF00A7E1);
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    textTheme: buildDefaultTextTheme(base.textTheme),
    primaryColor: Color(0xFF7FB069), // Bud Green
    accentColor: Color(0xFF2B2D42), // Space Cadet
    scaffoldBackgroundColor: Color(0xFFFAFFFD), // Baby Powder  q
    buttonColor: Color(0xFF7FB069), // Cerulean Crayola
  );
}

TextTheme buildDefaultTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline5: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
  );
}
