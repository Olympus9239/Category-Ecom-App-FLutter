import 'package:category_app/Widgets/themes.dart';
import 'package:flutter/material.dart';
 
 class CartPage extends StatelessWidget {
   const CartPage({ Key key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: MyTheme.creamColor,
       appBar:AppBar(
           title:Title(color: Colors.black, child: Text('Cart')),
           centerTitle: true,
       )
     );
   }
 }