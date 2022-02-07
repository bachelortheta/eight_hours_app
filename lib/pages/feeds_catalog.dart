import 'dart:convert';

import 'package:eight_hours_app/models/feeds.dart';
import 'package:eight_hours_app/models/shoes.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:eight_hours_app/widgets/shoes_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/feeds_widget.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class feeds_Catalog extends StatefulWidget {
  const feeds_Catalog({ Key? key }) : super(key: key);

  @override
  State<feeds_Catalog> createState() => _feeds_CatalogState();
}

class _feeds_CatalogState extends State<feeds_Catalog> {
  
  //now loading the JSON data
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //function to load the data will be
    feedLoad();
  }

  //defining the feed load
  feedLoad() async {
    await Future.delayed(Duration(seconds: 2));
    var feed_data = await rootBundle.loadString("assets/files/feeds.json");
    // print(feed_data);
    //now that the data is loaded but in string so decoding
    var feed_decoded = jsonDecode(feed_data);
    // print(feed_decoded);
    //now we only need the feed so,
    var ofeed_decoded = feed_decoded["feeds"];
    // print(ofeed_decoded);
    //now converting this dynamic data into list
    feedsCatalog.feeds = List.from(ofeed_decoded).map<feed>((item) => feed.fromMap(item)).toList();

    //now data is loaded, but now working because for stateful widget to work it should be setstate
    setState(() {
      
    });
 }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarMain(textColor: Colors.black, Page: 'Feeds', backgroundColor: Colors.white,),
      drawer: const myDrawer(),
      body: 
        // child: Image.asset("assets/images/homescreen.png",fit: BoxFit.scaleDown,)
        (feedsCatalog.feeds!=null && feedsCatalog.feeds.isNotEmpty)?ListView.builder(
          itemCount: feedsCatalog.feeds.length, 
          itemBuilder: (BuildContext context, int index) { 
            return feedsWidget(Feed: feedsCatalog.feeds[index]);
           },
        ):Center(child: CircularProgressIndicator(),),
    );
  }
}