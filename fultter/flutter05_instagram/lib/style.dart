import 'package:flutter/material.dart';

var theme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 2,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.black)
    ),
    textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.blue),
        bodyLarge: TextStyle(color: Colors.red)
    )
);