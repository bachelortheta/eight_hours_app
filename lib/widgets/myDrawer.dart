import 'package:eight_hours_app/utils/routes.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //the column like feature used on drawer
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //making the header of drawer
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue),
              //seting name in header
              accountName: Text('Kamran',
              style: TextStyle(color: Colors.white),), 
              //setting email in header
              accountEmail: Text('kaamipresents@gmail.com',
              style: TextStyle(color: Colors.white),),
              //setting picture in header
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/user_image.png"),
                radius: 0.0,),
                ),
              ),

          
          //for making the menu items
            //for making home
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const ListTile(
                leading: Icon(Icons.home_rounded,
                color: Colors.blue,),
                title: Text('Home',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            //for making FAQ
            InkWell(
              // onTap: () => Navigator.pop(context),
              child: const ListTile(
                leading: Icon(Icons.question_answer_rounded,
                color: Colors.blue,),
                title: Text('FAQ',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            //for making Settings
            InkWell(
              child: ListTile(
                // onTap: () => Navigator.pop(context),
                leading: const Icon(Icons.settings_rounded,
                color: Colors.blue,),
                title: const Text('Settings',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
        ],),
    );
  }
}