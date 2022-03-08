import 'dart:math';

import 'package:flutter/material.dart';

const appRed = Colors.red;
const appGreen = Colors.green;
const appBlue = Colors.blue;
const appYellow = Colors.yellow;
const appBlack = Colors.black;
const appWhite = Colors.white;

ThemeData light = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Color.fromARGB(
          Random().nextInt(256),
          Random().nextInt(255),
          Random().nextInt(255),
          Random().nextInt(255),
        ),
        fontSize: 18,
      ),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: appRed,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: appBlack,
      ),
    ));

ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: appWhite,
        fontSize: 18,
      ),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: appBlack,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: appBlack,
      ),
    ));
