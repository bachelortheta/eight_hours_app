import 'dart:convert';

import 'package:eight_hours_app/models/catalog.dart';
import 'package:eight_hours_app/utils/routes.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/items_widget.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/services.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
} 

class _MyHomePageState extends State<MyHomePage> {

  //I want to k before running the widget it will load the data
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData(); //calling a function that will load the data
  }

  //definning the function that will load data
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var catalogDecoded = jsonDecode(catalogJson);
    //now we need only the inside values of the main so
    var catalogProducts = catalogDecoded["products"];
    // print(catalogProducts);
    //catalogProducts is dynamic so we have to make it a list 
    catalogModel.products = List.from(catalogProducts).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarMain(textColor: Colors.black, Page: 'Mobiles', backgroundColor: Colors.white,),
        drawer: const myDrawer(drawerColor: Color.fromARGB(255, 255, 145, 0),),
        body: 
        // Center(
        //   child: Image.asset("assets/images/homescreen.png",fit: BoxFit.scaleDown,)
        //   )
        //Making a catalog
        (catalogModel.products!=null && catalogModel.products.isNotEmpty)?
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: GridView.builder(
            itemCount: catalogModel.products.length, //items will equal to length of items in catalogModel class array
            itemBuilder: (context, index){
              //formation of the catalog
              return itemsWidget(item: catalogModel.products[index],); //this widget will be created
            }, gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount(
              // crossAxisSpacing: 5,
              crossAxisCount: 2),
            ),
        ): Center
          (child: const CircularProgressIndicator(),) ,
      ),
    );
  }
}