import 'package:eight_hours_app/utils/routes.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //this setting is for the specific page appbar, to edit for complete
        //go to the theme in main
        // backgroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.blue),
        // //removing the shadow as well
        // elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            //puting space
            const SizedBox(
              width: 80,
            ),

            //title of page
            const Text('Homepage',
            style: TextStyle(
              fontWeight: FontWeight.w600, 
              // color: Colors.blue,
              fontSize: 18),),

            //puting space
            const SizedBox(
              width: 90,
            ),

            //icon for logout
            InkWell(
              onTap: () => {
                Navigator.pushNamed(context, MyRoutes.LoginRoute2),
                },

              child: const Icon(
                EvaIcons.logOut,color: Colors.black,),
            )
          ],
        ),
      ),
      drawer: const myDrawer(),
      body: Center(
        child: Image.asset("assets/images/homescreen.png",fit: BoxFit.scaleDown,)
        ),
    );
  }
}