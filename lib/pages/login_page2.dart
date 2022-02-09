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

  String welcome_note = ""; //welcome starting state
  bool changeButton = false; //
  //key of form
  final _formKey = GlobalKey<FormState>();

//FUNCTIONS
  //move to homeFunction
  moveToHome(BuildContext context) async {                  
    //running a validation check
    if (_formKey.currentState!.validate()) {
      //using Navigator to access the homescreen
      //changing value for updating above
      setState(() {
        changeButton = true;  
      });
      
      //closing the keyboard automatically
      FocusScopeNode currentFocus = FocusScope.of(context);

      if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

      //delay duration
      await Future.delayed(const Duration(seconds: 1));
      
      //for navigation
      await Navigator.pushNamed(context, MyRoutes.homeRoute2);

      //changing everything back to normal
      setState(() {
        changeButton = false;
        _formKey.currentState!.reset();
      });
    }
    
  } //END OF moveToHome Function
  
  @override
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
                child: Text(changeButton?welcome_note: "Hallelujah!", 
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
                child: Form(
                  key: _formKey, //this key will take latest state of the form
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
                          validator: (value){
                            if (value!.isEmpty) {
                              return "Name is Required";
                            }
                            return null;
                          },
                          // controller: 'username reset controller',
                      ),
                      //password
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter password',
                          labelText: 'Password',),
                        validator: (value){
                            if (value!.isEmpty) {
                              return "Password is Required";
                            }
                            else if (value.length<6) {
                              return "Password should be minimum 6 character long";
                            }
                            return null;
                        },
                        // controller: 'password reset controller',  
                      ),
                    ],
                  ),
                ),
              ),
      
              //putting space between password and submit button
              const SizedBox(
                height: 50,
              ),
      
              //submit button with container
                //Inkwell splash works when then ancestor in material
                //the decoration should be given to the ancestor
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(changeButton?20:10),
                child: InkWell(
                  // highlightColor: Colors.blue.shade100,
                  splashColor: Colors.blue.shade100,
                  onTap: () => moveToHome(context), 
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton? 40 : 70,
                    height: 40,
                    // decoration: BoxDecoration(
                    //   color: Colors.blue,
                    //   borderRadius: BorderRadius.circular(changeButton?20:10),
                    //   ),
                    child: changeButton?(const Icon(Icons.play_arrow_rounded,color: Colors.white,)):const Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                  ),
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