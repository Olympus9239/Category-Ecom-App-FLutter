import 'package:category_app/Pages/loginpage.dart';
import 'package:category_app/Utilis/utilities.dart';
import 'package:category_app/Widgets/themes.dart';
import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Flutter Demo',
       themeMode: ThemeMode.light,
       debugShowCheckedModeBanner: false,

  
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute:MyRoute.loginRoute,//Using initial route hamlog directly iss page pe aayenge. e.g CategoryApp wale screen pe
      
      routes: {
        "/":(context)=>LoginPage(),
         MyRoute.homeRoute:(context)=>CategoryApp(),// right now we are using Myroute from utilis page. earlier it was "/home":(context)=>CategoryApp(),
        MyRoute.loginRoute:(context)=>LoginPage(),// right now we are using Myroute from utilis page. earlier it was "/login":(context)=>LoginPage(),

      },
    );
  }
}
