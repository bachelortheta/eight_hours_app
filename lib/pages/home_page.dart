import 'package:eight_hours_app/utils/routes.dart';
import 'package:eight_hours_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            //puting space
            const SizedBox(
              width: 80,
            ),

            //title of page
            const Text('Homepage',
            style: TextStyle(fontWeight: FontWeight.bold),),

            //puting space
            const SizedBox(
              width: 90,
            ),

            //icon for logout
            InkWell(
              onTap: () => {
                Navigator.pushNamed(context, MyRoutes.LoginRoute2),
                },

              child: const Icon(
                Icons.logout),
            )
          ],
        ),
      ),
      drawer: const myDrawer(),
      body: Center(
        child: Image.asset("assets/images/homescreen.png")
        ),
    );
  }
}