import 'package:eight_hours_app/utils/routes.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  
  //creating custom properties
  final String Page;
  final Color backgroundColor;
  final Color textColor;

  const AppBarMain({Key? key, required this.Page, required this.backgroundColor, required this.textColor}) : assert (Page!=null),super(key: key);

  @override
   Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //title of page
              Text(Page,
              style: TextStyle(
                fontWeight: FontWeight.w600, 
                // color: Colors.blue,
                fontSize: 18),),
            ],
          ),
    );
  }
}