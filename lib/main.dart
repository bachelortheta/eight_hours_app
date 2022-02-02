import 'package:eight_hours_app/pages/login_page.dart';
import 'package:eight_hours_app/pages/login_page2.dart';
import 'package:eight_hours_app/utils/routes.dart';
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
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      // initialRoute: "/login",
      routes: {
        MyRoutes.Route: (context) => const LoginPage2(),
        MyRoutes.homeRoute: (context) => const MyHomePage(),
        MyRoutes.LoginRoute1: (context) => const LoginPage(),
        MyRoutes.LoginRoute2: (context) => const LoginPage2(),
      },
    );
  }
}

