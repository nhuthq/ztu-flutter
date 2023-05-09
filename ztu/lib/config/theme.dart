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
        color: Colors.black, fontSize: 57, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        color: Colors.black, fontSize: 36, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(
        color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
    labelMedium: TextStyle(
        color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
    labelSmall: TextStyle(
        color: Colors.black, fontSize: 11, fontWeight: FontWeight.normal),
    bodyLarge: TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(
        color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
  );
}
