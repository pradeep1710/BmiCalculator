import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor:Colors.grey.shade200,
    
    primaryColor: Colors.black,
    primarySwatch: Colors.indigo,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.indigo, brightness: Brightness.light),
    iconTheme: const IconThemeData(color: Colors.black),
    

    // light appbar theme
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: Colors.black),foregroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: ThemeData.light()
            .textTheme
            .headline4!
            .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
        backgroundColor: Colors.white),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor:const Color.fromARGB(255, 23, 23, 23),
    primaryColor: Colors.white,
    primarySwatch: Colors.pink,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.pink, brightness: Brightness.dark),
    iconTheme: const IconThemeData(color: Colors.white),

    // dark appbar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: ThemeData.dark()
            .textTheme
            .headline4!
            .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
        backgroundColor: Colors.grey.shade900),
  );
}
