import 'dart:convert';

import 'package:eight_hours_app/models/movies_catalog.dart';
import 'package:eight_hours_app/widgets/MainAppBar.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';


class movies extends StatefulWidget {
  const movies({ Key? key }) : super(key: key);

  @override
  State<movies> createState() => _moviesState();
}

class _moviesState extends State<movies> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //calling the function that will load the data first
    moviesLoad();
  }

// "https://imdb-api.com/en/API/Top250Movies/k_l26drquq"
//https://imdb-api.com/en/API/Top250TVs/k_l26drquq
  moviesLoad() async {
    await Future.delayed(Duration(seconds: 2));
    var Response = await http.get(Uri.http('imdb-api.com', 'API/Top250Movies/k_l26drquq'));
    var moviesResponse = Response.body; //accessing the body of the request
    var moviesListComplete = jsonDecode(moviesResponse); //converting into a list
    var moviesListed = moviesListComplete["items"];
    //printing the data to see that it is loaded or not
    // print(moviesList);

    moviesCatalog.moviesList = List.from(moviesListed).map<movie>((item) => movie.fromMap(item)).toList();
    setState(() {
      
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(Page: "Movies", backgroundColor: Colors.white, textColor: Colors.black),
      drawer: myDrawer(drawerColor: Colors.red),
      body: Column(
        children: [
        //Header
        moviesHeader(),
      
        //Body
        if
        (moviesCatalog.moviesList.isNotEmpty)
        //run this
        moviesListBuilder()
        else Center(
          child: const CircularProgressIndicator(),)
        ],
      
      ),
    );
  }
}

//MOVIES HEADER 
class moviesHeader extends StatelessWidget {
  const moviesHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("TOP 250 MOVIES",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text("Based on Rank")
      ],
    );
  }
}

//MOVIES LISTBUILDER
class moviesListBuilder extends StatelessWidget {
  const moviesListBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // scrollDirection: Axis.vertical,
        shrinkWrap: true, 
        // physics: NeverScrollableScrollPhysics(), // new line
        itemCount: moviesCatalog.moviesList.length,
        itemBuilder: (context,index){
          final Movie = moviesCatalog.moviesList[index];
          return moviesListView(Movie: Movie,);
        }
        ),
    )
      ;
  }
}

//movies list view
class moviesListView extends StatelessWidget {
  
  final movie Movie;

  const moviesListView({Key? key, required this.Movie})
   : assert(Movie!=null)
   ,super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: const StadiumBorder(),
        child: ListTile(
          onTap: () {
            print(Movie.title);
          },
          leading: CircleAvatar(backgroundImage: NetworkImage(Movie.Image),),
          title: Text(Movie.title),
          trailing: Text("# ${Movie.rank}"),
          subtitle: Text(Movie.rating),
        ),
      ),
    );
  }
}
