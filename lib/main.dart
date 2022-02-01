import 'package:eight_hours_app/pages/login_page.dart';
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
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      // initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const MyHomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}

