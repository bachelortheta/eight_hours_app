//making class that will specify the properties of the single item
import 'package:flutter/material.dart';

class Item{
  final num id; //product id
  final String name; //product name
  final double price; //product price
  final String desc; //product description
  final String color; //product color
  final String image;

  //these will be filled using the constructor
  Item({
  required this.id, 
  required this.name, 
  required this.price, 
  required this.desc, 
  required this.color, 
  required this.image,}); //product image
}

//now making list of product in our catalog using the class mentioned above

class catalogModel{

  //making array that has the items based on the blueprint
    static final products = [
    //Item 1 of our catalog
    Item(
      id: 1, 
      name: "iPhone 13", 
      price: 999, 
      desc: "This is latest Iphone", 
      color: "#ff6347", 
      image: "https://appleshop.com.pk/wp-content/uploads/2021/09/iphone-13-blue.png"),

    //Item 2 of our catalog
    Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),

      Item(
      id: 2, 
      name: "iPhone 7", 
      price: 499, 
      desc: "This is old Iphone", 
      color: "#ff6347", 
      image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),
];

}
