import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://static.theceomagazine.net/wp-content/uploads/2020/06/12080821/spiegel.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(

            children: <Widget>[
              UserAccountsDrawerHeader(accountName: Text('Evan Spiegel ',
              style: TextStyle(
                fontSize: 30.0,
              ),
              ), accountEmail: Text("evan32@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                backgroundImage: NetworkImage(imageUrl),

                ),
                

              ),
              ListTile(leading: Icon(CupertinoIcons.home),
              title: Text("Home",textScaleFactor: 1.2,),
              ),
              ListTile(leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile",textScaleFactor: 1.2,),
              ),
              ListTile(leading: Icon(CupertinoIcons.mail),
              title: Text("Email",textScaleFactor: 1.2,),
              ),
              
            ],
        ),
      )
  
    );
    
  }
}