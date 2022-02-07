//creating a class feed
class feed{
  //settings properties of feed
  final num id;
  final String title;
  final String description;
  final String name;
  final String ProfilePicture;

  //constructor from the properties
  feed({
  required this.id, 
  required this.title, 
  required this.description, 
  required this.name, 
  required this.ProfilePicture});

    factory feed.fromMap(Map<String,dynamic>map){
    return feed(
    id: map["id"], 
    name: map["name"], 
    title: map["title"], 
    description: map["description"], 
    ProfilePicture: map["profilePicture"]);
  }

  //now for encoding i.e from dynamic to string values
    toMap() => {
    "id": id, 
    "name": name,
    "title": title, 
    "description": description,  
    "profilePicture": ProfilePicture,
    };

  toList() {}
}

//creating list of feeds
class feedsCatalog{
  static List<feed>feeds = [
    
    // //item test 1
    // feed(
    // id: 1, 
    // title: "title", 
    // description: "description", 
    // name: "name", 
    // ProfilePicture: "ProfilePicture"),

  ]; 
}