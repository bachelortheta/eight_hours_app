import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      drawer: const Drawer(

      ),
      body: Center(
        child: Image.asset("assets/images/homescreen.png")
        ),
    );
  }
}