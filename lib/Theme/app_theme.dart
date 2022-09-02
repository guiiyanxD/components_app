import 'package:flutter/material.dart';



class AppTheme {

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigoAccent,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      focusColor: primary,
      elevation: 0
    ),

    iconTheme: const IconThemeData(
      color: primary
    )
  );
}
