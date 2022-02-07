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
              color: Colors.black),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black),
              //seting name in header
              accountName: Text('Kamran',
              style: TextStyle(color: Colors.white),), 
              //setting email in header
              accountEmail: Text('kaamipresents@gmail.com',
              style: TextStyle(color: Colors.white),),
              //setting picture in header
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/kamran.png"),
                radius: 0.0,),
                ),
              ),

          
          //for making the menu items
            //for making home
            InkWell(
              onTap: () => Navigator.popAndPushNamed(context, MyRoutes.homeRoute),
              child: const ListTile(
                leading: Icon(Icons.home_rounded,
                color: Colors.black,),
                title: Text('Home',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            //for making Clothes Catalog
            InkWell(
              onTap: () => Navigator.popAndPushNamed(context, MyRoutes.ClothesCatalog),
              child: const ListTile(
                leading: Icon(Icons.shopping_cart,
                color: Colors.black,),
                title: Text('Clothes',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            InkWell(
              child: ListTile(
                onTap: () => Navigator.popAndPushNamed(context, MyRoutes.shoesCatalog),
                leading: const Icon(Icons.shop_rounded,
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
                onTap: () => Navigator.popAndPushNamed(context, MyRoutes.feedsCatalog),
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