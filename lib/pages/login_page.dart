// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            
            //making some space on top of image
            const SizedBox(
              height: 20.0,
            ),

            //making child 1 in column as image asset
            Image.asset('assets/images/login_image2.png',
            fit: BoxFit.fitHeight,
            alignment: Alignment.center,),

            //making some space on top of image
            const SizedBox(
              height: 10.0,
            ),

            //making welcome to login screen text
            Text('Login Welcome', 
            style:  GoogleFonts.lato(textStyle: const TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.w800,
              color: Colors.blue,
            )
            ),
            ),

            //username and password child
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 30),
              child: Column(
                children: [
                  //username textfield
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(fontSize: 15),
                      hintText: "Enter your name",

                    ),
                    keyboardType: TextInputType.name,
                  ),

                  //password textfield
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 15),
                      hintText: "Enter Password",
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              width: 80,
              child: ElevatedButton(
                onPressed: (){
                  print('button is pressed');
                }, 
                child: const Center(
                  child: Text('Login'),
                ),
                ),
            )
          ],
        ),
      )
    );
  }
}