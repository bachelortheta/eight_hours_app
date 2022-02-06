import 'package:eight_hours_app/fonts/priceFont.dart';
import 'package:eight_hours_app/models/catalog.dart';
import 'package:flutter/material.dart';

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
      child: Card(
        color: Colors.white,
        child: ListTile(
          onTap:() {
            return print("${item.name} pressed");
          },
          leading: CircleAvatar(backgroundImage: NetworkImage(item.image)),
          title: Text(item.name, style: TextStyle(fontWeight: FontWeight.w600),),
          subtitle: Text(item.desc),
          trailing: priceFont(text: "\$${item.price}"),
        ),
      ),
    );
  }
}