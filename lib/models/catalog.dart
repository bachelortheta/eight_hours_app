//making class that will specify the properties of the single item

class Item{
  final num id; //product id
  final String name; //product name
  final int price; //product price
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

  //making another constructor that will call the values from the json file
    //factory means that it is passing all the properties of the class
    //fromMap means it is passing class to the map
    //return item means it is returning updated values from the map to the class variables
  factory Item.fromMap(Map<String,dynamic>map){
    return Item(
    id: map["id"], 
    name: map["name"], 
    price: map["price"], 
    desc: map["desc"], 
    color: map["color"], 
    image: map["image"]);
  }

  //now for encoding i.e from dynamic to string values
    toMap() => {
    "id": id, 
    "name": name,
    "price": price, 
    "desc": desc, 
    "color": color, 
    "image": image
    };

  toList() {}

}

//now making list of product in our catalog using the class mentioned above

class catalogModel{

  //making array that has the items based on the blueprint
    static List<Item> products = [
    //Item 1 of our catalog
      // Item(
      // id: 2, 
      // name: "iPhone 7", 
      // price: 499, 
      // desc: "This is old Iphone", 
      // color: "#ff6347", 
      // image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple-iphone7-jetblk-airpod_inline.jpg.large.jpg"),
];

}
