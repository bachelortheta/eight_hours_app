import 'package:flutter/material.dart';

class priceFont extends StatelessWidget {
  
  final String text; //text of font
  final Color color; //color of font
  final double size;

  const priceFont({Key? key, 
  required this.text, 
  this.color=Colors.blue, 
  this.size =20}) : super(key: key); //size of font

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold), 
    );
  }
}