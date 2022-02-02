import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//making a blueprint for the login screen
class LoginPage2 extends StatefulWidget {
  const LoginPage2({ Key? key }) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,   //17 pixels from bottom overflow solution
      backgroundColor: Colors.white,
      body: Center(
        //loading image, welcome, username, pass, submit
        child: Column(
          children: [
            //putting space between image and screen top
            SizedBox(
              height: 50,
            ),
            
            //image loading
            Image.asset(
              "assets/images/login_image3.png",
              width: 200,
              height: 200,
              fit: BoxFit.contain,),

            //putting space between image and welcome
            SizedBox(
              height: 10,
            ),

            //welcome
            Center(
              child: Text('Welcome',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                )
              ),),
            ),

            //putting space between welcome and textfield
            SizedBox(
              height: 20,
            ),

            //username, password
            //username
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      labelText: 'Name',),
                  ),
                  //password
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      labelText: 'Password',),
                  ),
                ],
              ),
            ),

            //putting space between password and submit button
            SizedBox(
              height: 50,
            ),

            //submit button
            ElevatedButton(
              onPressed: () {
                print("Button is pressed");
                },
            child: Text('Submit'),),

            //putting space between button and forget password
            SizedBox(
              height: 20,
            ),

            //inserting forget password and register
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

               //forget password
               ElevatedButton(
                 onPressed: (){

                   print('Password Forget');

                 },
                 //it has icon and text 
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [

                     //icon
                     Icon(Icons.vpn_key),

                     //putting space between icon and text
                     SizedBox(
                      width: 10,
                      ),

                     //text
                     Text('Forget?'),

                   ],
                 ),),

               //register
               ElevatedButton(
                 onPressed: (){

                   print('Register');

                 },
                 //it has icon and text 
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [

                     //icon
                     Icon(Icons.app_registration_rounded),

                     //text
                     Text('Register'),

                   ],
                 ),)

              ],)
          ],
        ),
      ),
    );
  }
}