//making class shoe
class shoe {
  final double size; //size of shoes
  final String color; //color of shoes
  final String ImageURL; //link of image
  final int price;
  //constructor of the class
  shoe({
    required this.size, 
    required this.color, 
    required this.ImageURL,
    required this.price,
    }); //image of shoes
}

//making class shoes
class shoesCatalog {
  static final shoes = [
    //item 1
    shoe(
    size: 8, 
    color: "black", 
    ImageURL: "ImageURL", 
    price: 50,
    ),

    //item 2
    shoe(
    size: 9, 
    color: "red", 
    ImageURL: "ImageURL", 
    price: 40,
    ),
  ];
}
