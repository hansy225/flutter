import 'package:flutter/material.dart';

var theme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Color(0xFFf3edf7),
      elevation: 2,
      titleTextStyle: TextStyle(color: Colors.pinkAccent, fontSize: 30),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.yellowAccent
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.tealAccent
      )
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.blueGrey),
      bodyLarge: TextStyle(color: Colors.green, fontSize: 16)
    )
);