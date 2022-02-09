//creating a single entry a movie list will have
class movie {
  final String rank;
  final String title;
  final String Image;
  final String rating;

 
  //creating constructor
   movie({required this.rank, required this.title, required this.Image, required this.rating});

  factory movie.fromMap(Map<String,dynamic>map){
    return movie(
    title: map["title"], 
    rank: map["rank"], 
    Image: map["image"], 
    rating: map["imDbRating"], 
    );
  }

  //now for encoding i.e from dynamic to string values
    toMap() => {
    "title": title, 
    "rank": rank, 
    "image": Image, 
    "imDbRating": rating, 
    };

  ToList() {}
}

//creating list having the movies
class moviesCatalog{
  static  List<movie> moviesList = [

    // //sample item of the list
    // movie(
    // rank: "rank", 
    // title: "title", 
    // Image: "Image", 
    // rating: "10",
    // )
  ];
}