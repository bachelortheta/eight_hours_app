//creating a stateless widget
import 'package:eight_hours_app/models/shoes.dart';
import 'package:flutter/material.dart';

class shoesWidget extends StatelessWidget {
  
  //importing data from shoes.dart class
  final shoe Shoe;

  const shoesWidget({Key? key, required this.Shoe}) : assert(Shoe!=null)
  ,super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(Shoe.ImageURL),
      ),
      title: Text(Shoe.color),
      trailing: Text("$Shoe.price"),
    );
  }
}