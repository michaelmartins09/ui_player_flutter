import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  primaryColor: Colors.blueGrey[900],
  primarySwatch: Colors.grey,
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.blueGrey[900]
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.blueGrey[900],
        fontWeight: FontWeight.bold,
        fontSize: 22
      )
    )
  )
);
