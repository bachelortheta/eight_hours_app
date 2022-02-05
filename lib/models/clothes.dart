class cloth {
  //properties of a cloth item
  final String id;
  final String brand;
  final String size;
  final num waist;
  final num chest;
  final num shoulders;
  final String imageURL;
  final num price;

  //creating a constructor of the above properties
  cloth({
  required this.imageURL, 
  required this.price, 
  required this.id, 
  required this.brand, 
  required this.size, 
  required this.waist, 
  required this.chest, 
  required this.shoulders});
}

//creating class to make list of the clothes
class clothesCatalog {
  static final clothes = [
    //making object of the above class to make first product in clothes catalog
    cloth(
      id: "1", 
      brand: "Gucci", 
      size: "Small", 
      waist: 28, 
      chest: 36, 
      shoulders: 25, 
      imageURL: 'https://assets.ajio.com/medias/sys_master/root/20210403/OjjF/6068dc44aeb269a9e33a52e1/-473Wx593H-462103975-pink-MODEL.jpg', 
      price: 450),

    //second product
    cloth(
      id: "2", 
      brand: "Armani", 
      size: "Medium", 
      waist: 24, 
      chest: 32, 
      shoulders: 26, 
      imageURL: 'https://assets.ajio.com/medias/sys_master/root/20210420/R70k/607ecc5baeb269a9e3972075/dennislingo_premium_attire_green_full_sleeves_slim_fit_shirt.jpg', 
      price: 550),

  ];
}