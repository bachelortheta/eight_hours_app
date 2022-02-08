import 'dart:convert';
import 'package:eight_hours_app/models/catalog.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({ Key? key }) : super(key: key);

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
} 

class _MyHomePageState2 extends State<MyHomePage2> {

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
        appBar: AppBarMain(Page: "Home", backgroundColor: Colors.white, textColor: Colors.black),
        drawer: const myDrawer(drawerColor: Colors.green),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //running the function to load the header
                HeaderPage2(),

                //now loading the catalog
                if
                (catalogModel.products!=null && catalogModel.products.isNotEmpty)
                //run this
                CatalogList().expand()
                else Center(
                  child: const CircularProgressIndicator().py16(),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderPage2 extends StatelessWidget {
  const HeaderPage2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Catalog".text.xl5.bold.make(),
                "Welcome to Store".text.xl3.make(),
              ],
            );
  }
}

//Making catalogList
class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogModel.products.length,
      itemBuilder: (context, index) {
        //return widget that will have data,
        final catalog = catalogModel.products[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

//making CatalogItem Widget having the data
class CatalogItem extends StatelessWidget {
  
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
   : assert(catalog!=null),super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    //instead of returning container, we will use here VxBox;
    VxBox(
      child: Row(
        children: [
          CatalogImage(image: catalog.image),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.bold.xl2.make(),
                catalog.desc.text.xs.make(),
                //to show the button and price and purchase button in same bar 

                //giving gap
                20.heightBox,

                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    "\$${catalog.price}".text.make(),
                  ElevatedButton(onPressed: () {

                  }, 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all(StadiumBorder()),
                  ),
                  child: "Buy".text.make())
                  ],
                ).pOnly(right: 8)
              ],
            ))
        ],
      )
    ).gray200.rounded.square(150).make().py12()
    ;
  }
}

class CatalogImage extends StatelessWidget {
  
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Image.network(
            image,
            ).box.rounded.p24.color(Colors.white).make().p16().w40(context);
  }
}