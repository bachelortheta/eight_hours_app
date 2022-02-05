import 'package:eight_hours_app/utils/routes.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class settings extends StatelessWidget {
  const settings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarMain(textColor: Colors.black, Page: 'Settings', backgroundColor: Colors.white,),
        drawer: const myDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/login_image.png", 
                fit: BoxFit.contain, 
                width: 300, 
                height: 300,)
              ],
            ),

            SizedBox(
              height: 200,
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(onPressed: () { 
                    Navigator.pushNamed(context, MyRoutes.LoginRoute2);
                   },
                  child: Icon(Icons.logout_rounded),),
                ],
              ),
            ),
          ],
        ),
    );
  }
}