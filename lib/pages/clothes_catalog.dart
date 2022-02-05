import 'package:eight_hours_app/models/clothes.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/clothes_widget.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class ClothesCatalog extends StatelessWidget {
  const ClothesCatalog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarMain(textColor: Colors.black, Page: 'Clothes', backgroundColor: Colors.white,),
      drawer: const myDrawer(),
      body: 
        // child: Image.asset("assets/images/homescreen.png",fit: BoxFit.scaleDown,)
        ListView.builder(
          itemCount: clothesCatalog.clothes.length, 
          itemBuilder: (BuildContext context, int index) { 
            return clothesWidget(Cloth: clothesCatalog.clothes[index]);
           },
        ),
    );
  }
}