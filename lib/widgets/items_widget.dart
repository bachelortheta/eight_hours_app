import 'package:eight_hours_app/fonts/priceFont.dart';
import 'package:eight_hours_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class itemsWidget extends StatelessWidget {
  
  final Item item;

  const itemsWidget({Key? key, required this.item}) 
  :
  //assert is done to make sure if the null entry comes the system should fail 
  assert (item != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    //now all the data has been extracted and placement needs to be done
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
       return print("${item.name} pressed");
      },
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),),
          child: GridTile(
            child: Image.network(item.image),
            header: Container(
              alignment: Alignment.center,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black87),
              child: Text(
                item.name, style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.white),)),
            // subtitle: Text(item.desc),
            footer: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: priceFont(text: "\$${item.price}"),
              )),
          ),
        ),
      ),
    );
  }
}