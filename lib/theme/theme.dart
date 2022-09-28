import 'package:flutter/material.dart';

ThemeData app_theme() {
  return ThemeData(
    textTheme: TextTheme(
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontFamily: 'AlmaSans',
        fontWeight: FontWeight.bold,
      ),
    ).apply(
      bodyColor: Colors.white70,
    ),
    iconTheme: IconThemeData(
      color: Color.fromRGBO(33, 149, 242, 1),
    ),
  );
}
