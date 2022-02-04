import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.blue), 
          // toolbarTextStyle: Theme.of(context).textTheme.bodyText2, 
          titleTextStyle: Theme.of(context).textTheme.headline4,
        )
      ); 
}