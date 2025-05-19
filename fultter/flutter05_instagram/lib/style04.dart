import 'package:flutter/material.dart';

var theme = ThemeData(
    appBarTheme: AppBarTheme(
      elevation: 2,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.yellowAccent
      )
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.blue, fontSize: 30),
      bodyLarge: TextStyle(color: Colors.green)
    )
);