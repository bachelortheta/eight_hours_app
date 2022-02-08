import 'dart:convert';

import 'package:eight_hours_app/models/feeds.dart';
import 'package:eight_hours_app/models/shoes.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:eight_hours_app/widgets/shoes_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/feeds_widget.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class feeds_Catalog2 extends StatefulWidget {
  const feeds_Catalog2({ Key? key }) : super(key: key);

  @override
  State<feeds_Catalog2> createState() => _feeds_CatalogState2();
}

class _feeds_CatalogState2 extends State<feeds_Catalog2> {
  
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
      drawer: const myDrawer(drawerColor: Colors.black,),
      body:
      //making list with header and list
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //making header
            feedsHeader(),
            if(
              feedsCatalog.feeds!=null && feedsCatalog.feeds.isNotEmpty
            )
            //making list
            FeedsListA().expand()
              else(
                Center(child: CircularProgressIndicator(),)
              )
          ],
        ).p32() 
        );
  }
}

//header of feeds page
class feedsHeader extends StatelessWidget {
  const feedsHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Feeds".text.bold.xl5.make(),
            "Welcome to Feeds".text.xl3.make(),
          ],
        );
  }
}

//widget will create after extracting data from class
class feedsList extends StatelessWidget {
  
  final feed Feed;

  const feedsList({Key? key, required this.Feed})
   : 
   assert (Feed!=null),super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          FeedsImage(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Feed.name.text.bold.xl2.color(Colors.purple).make(),
                Feed.title.text.xs.color(Colors.purple).make(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Call".text.xl2.bold.make(),
                    ElevatedButton(onPressed: (){

                    }, 
                    child: "Phone".text.make())
                  ],
                ).pOnly(top: 10)
              ],
            ).pOnly(top: 10))
        ],
      )
    ).square(150).color(Colors.white).roundedLg.make().p16();
  }
}

//widget to create a list builder
class FeedsListA extends StatelessWidget {
  const FeedsListA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              shrinkWrap: true,
              itemCount: feedsCatalog.feeds.length,
              itemBuilder: (context,index){
                final feedsItem = feedsCatalog.feeds[index];
                return feedsList(Feed: feedsItem); //this will return the item filled widget
              },
              );
  }
}

class FeedsImage extends StatelessWidget {
  const FeedsImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
            "assets/images/user_image.png").p12().box.roundedLg.make().p16();
  }
}