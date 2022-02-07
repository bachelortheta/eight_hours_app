import 'package:eight_hours_app/models/shoes.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:eight_hours_app/widgets/shoes_widget.dart';
import 'package:flutter/material.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class ShoesCatalog extends StatelessWidget {
  const ShoesCatalog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarMain(textColor: Colors.black, Page: 'Shoes', backgroundColor: Colors.white,),
      drawer: const myDrawer(drawerColor: Color.fromARGB(255, 1, 144, 6),),
      body: 
        // child: Image.asset("assets/images/homescreen.png",fit: BoxFit.scaleDown,)
        ListView.builder(
          itemCount: shoesCatalog.shoes.length, 
          itemBuilder: (BuildContext context, int index) { 
            return shoesWidget(Shoe: shoesCatalog.shoes[index]);
           },
        ),
    );
  }
}