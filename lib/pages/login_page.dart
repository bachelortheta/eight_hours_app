// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('LOGIN PAGE',style: TextStyle(color: Colors.white),),
                  Icon(Icons.login,color: Colors.white,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}