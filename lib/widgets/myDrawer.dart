import 'package:eight_hours_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class myDrawer extends StatelessWidget {
  
  final Color drawerColor;

  const myDrawer({Key? key, required this.drawerColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //the column like feature used on drawer
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //making the header of drawer
          DrawerHeader(
            decoration: BoxDecoration(
              color: drawerColor),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: drawerColor),
              //seting name in header
              accountName: const Text('Kamran',
              style: TextStyle(color: Colors.white),), 
              //setting email in header
              accountEmail: const Text('kaamipresents@gmail.com',
              style: TextStyle(color: Colors.white),),
              //setting picture in header
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/kamran.png"),
                radius: 0.0,),
                ),
              ),

          
          //for making the menu items
            //for making home
            InkWell(
              onTap: () => Navigator.restorablePopAndPushNamed(context, MyRoutes.homeRoute2),
              child: const ListTile(
                leading: Icon(Icons.home_rounded,
                color: Colors.black,),
                title: Text('Home',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),


            InkWell(
              onTap: () => Navigator.restorablePopAndPushNamed(context, MyRoutes.movies),
              child: const ListTile(
                leading: Icon(Icons.movie_sharp,
                color: Colors.black,),
                title: Text('Movies',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            //for making Clothes Catalog
            InkWell(
              onTap: () => Navigator.popAndPushNamed(context, MyRoutes.ClothesCatalog),
              child: const ListTile(
                leading: Icon(FontAwesomeIcons.tshirt,
                color: Colors.black,),
                title: Text('Clothes',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            InkWell(
              child: ListTile(
                onTap: () => Navigator.popAndPushNamed(context, MyRoutes.shoesCatalog),
                leading: const Icon(FontAwesomeIcons.shoePrints,
                color: Colors.black,),
                title: const Text('Shoes',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            //for making Settings
            InkWell(
              child: ListTile(
                onTap: () => Navigator.popAndPushNamed(context, MyRoutes.settings),
                leading: const Icon(Icons.settings_rounded,
                color: Colors.black,),
                title: const Text('Settings',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            InkWell(
              child: ListTile(
                onTap: () => Navigator.popAndPushNamed(context, MyRoutes.feedsCatalog2),
                leading: const Icon(Icons.feed_sharp,
                color: Colors.black,),
                title: const Text('Feeds',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
        ],),
    );
  }
}