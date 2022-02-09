import 'package:eight_hours_app/pages/clothes_catalog.dart';
import 'package:eight_hours_app/pages/feeds_catalog.dart';
import 'package:eight_hours_app/pages/feeds_catalog2.dart';
import 'package:eight_hours_app/pages/homepage2.dart';
import 'package:eight_hours_app/pages/login_page.dart';
import 'package:eight_hours_app/pages/login_page2.dart';
import 'package:eight_hours_app/pages/movies.dart';
import 'package:eight_hours_app/pages/settings.dart';
import 'package:eight_hours_app/pages/shoes_catalog.dart';
import 'package:eight_hours_app/utils/routes.dart';
import 'package:eight_hours_app/utils/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme(context),
      // initialRoute: "/login",
      routes: {
        MyRoutes.Route: (context) => const LoginPage2(),
        MyRoutes.homeRoute: (context) => const MyHomePage(),
        MyRoutes.homeRoute2: (context) => const MyHomePage2(),
        MyRoutes.LoginRoute1: (context) => const LoginPage(),
        MyRoutes.LoginRoute2: (context) => const LoginPage2(),
        MyRoutes.ClothesCatalog: (context) => const ClothesCatalog(),
        MyRoutes.settings: (context) => const settings(),
        MyRoutes.shoesCatalog: (context) => const ShoesCatalog(),
        MyRoutes.feedsCatalog: (context) => const feeds_Catalog(),
        MyRoutes.feedsCatalog2: (context) => const feeds_Catalog2(),
        MyRoutes.movies: (context) => const movies(),
      },
    );
  }
}

