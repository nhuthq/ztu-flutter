import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Avenir',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    displayLarge: TextStyle(
        color: Colors.black, fontSize: 36, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
        color: Colors.black, fontWeight: FontWeight.normal, fontSize: 10),
  );
}
