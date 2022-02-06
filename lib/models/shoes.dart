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
    ImageURL: "http://freepngimg.com/thumb/shoes/21860-7-red-shoes-thumb.png", 
    price: 50,
    ),

    //item 2
    shoe(
    size: 9, 
    color: "red", 
    ImageURL: "http://5.imimg.com/data5/CB/JW/MY-20432762/casual-slip-on-shoes-500x500.png", 
    price: 40,
    ),
  ];
}
