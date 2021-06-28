import 'package:flutter/material.dart';

class  MyTheme{
    static   ThemeData  lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(color: Colors.white,
        iconTheme:IconThemeData(color: Colors.black,),
        textTheme: Theme.of(context).textTheme,
        ),
      );
  static   ThemeData  darkTheme(BuildContext context) => ThemeData(
     brightness: Brightness.dark,
      );

      static Color  creamColor=Color(0xfff5f5f5);
      static Color  darkBluishCOlor=Color(0xff403b58);


}
