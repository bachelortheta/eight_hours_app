import 'package:eight_hours_app/models/catalog.dart';
import 'package:eight_hours_app/utils/routes.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/items_widget.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarMain(textColor: Colors.black, Page: 'Mobiles', backgroundColor: Colors.white,),
        drawer: const myDrawer(),
        body: 
        // Center(
        //   child: Image.asset("assets/images/homescreen.png",fit: BoxFit.scaleDown,)
        //   )
        //Making a catalog
        ListView.builder(
          itemCount: catalogModel.products.length, //items will equal to length of items in catalogModel class array
          itemBuilder: (context, index){
            //formation of the catalog
            return itemsWidget(item: catalogModel.products[index],); //this widget will be created
          }
          ),
      ),
    );
  }
}