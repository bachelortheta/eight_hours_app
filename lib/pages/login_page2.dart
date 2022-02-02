import 'package:eight_hours_app/utils/routes.dart';
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

  String welcome_note = "Hallelujah!";
  bool changeButton = false;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,   //17 pixels from bottom overflow solution
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          //loading image, welcome, username, pass, submit
          child: Column(
            children: [
              //putting space between image and screen top
              const SizedBox(
                height: 50,
              ),
              
              //image loading
              Image.asset(
                "assets/images/login_image3.png",
                width: 200,
                height: 200,
                fit: BoxFit.contain,),
      
              //putting space between image and welcome
              const SizedBox(
                height: 10,
              ),
      
              //welcome
              Center(
                child: Text(welcome_note,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  )
                ),),
              ),
      
              //putting space between welcome and textfield
              const SizedBox(
                height: 20,
              ),
      
              //username, password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    //username
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your name',
                        labelText: 'Name',),
                        onChanged: (value){
                              welcome_note = "Welcome "+value;
                        },
                    ),
                    //password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter password',
                        labelText: 'Password',),
                    ),
                  ],
                ),
              ),
      
              //putting space between password and submit button
              const SizedBox(
                height: 50,
              ),
      
              //submit button with container
              InkWell(
                onTap: () async {
                  //using Navigator to access the homescreen
                    //changing value for updating above
                    setState(() {
                      changeButton = true;  
                    });
                    
                    //delay duration
                    await Future.delayed(const Duration(seconds: 2));
                    
                    //for navigation
                    Navigator.pushNamed(context, MyRoutes.homeRoute);

                  },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changeButton? 35 : 70,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(changeButton?20:10),
                    ),
                  child: changeButton?(const Icon(Icons.play_arrow_rounded,color: Colors.white,)):const Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.center,
                ),
              ),
              
              //submit button
              // ElevatedButton(
              //   onPressed: () async {
              //     //using Navigator to access the homescreen
              //       //changing value for updating above
              //       setState(() {
              //         changeButton = true;  
              //       });
                    
              //       //delay duration
              //       await Future.delayed(const Duration(seconds: 3));
                    
              //       //for navigation
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);

              //     },
              // child: Text('Submit'),),
      
              //putting space between button and forget password
              const SizedBox(
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
                     children: const [
      
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
                     children: const [
      
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
      ),
    );
  }
}

class Routes {
}