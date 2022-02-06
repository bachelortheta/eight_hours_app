import 'package:eight_hours_app/fonts/priceFont.dart';
import 'package:eight_hours_app/models/clothes.dart';
import 'package:flutter/material.dart';

class clothesWidget extends StatelessWidget {
  
  //getting the cloth class to fill the widget and return it so that listview.build can be filled
  final cloth Cloth;

  const clothesWidget({Key? key, required this.Cloth}) : assert (Cloth != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(backgroundImage: NetworkImage(Cloth.imageURL)),
        title: Text(Cloth.brand),
        trailing: priceFont(text: "\$${Cloth.price}"),
        subtitle: Text("${Cloth.size}"),
      ),
    );
  }
}