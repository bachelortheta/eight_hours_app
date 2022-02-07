import 'package:eight_hours_app/models/feeds.dart';
import 'package:flutter/material.dart';

class feedsWidget extends StatelessWidget {

  final feed Feed;

  const feedsWidget({Key? key, required this.Feed}) : assert(Feed!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap:() {
              return print("${Feed.name} pressed");
            },
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/user_image.png"),
        ),
        title: Text(Feed.name),
        subtitle: Text(Feed.title),
        trailing: Text("${Feed.id}"),
      ),
    );
  }
}