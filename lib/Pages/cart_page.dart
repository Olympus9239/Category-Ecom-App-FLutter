import 'package:category_app/Widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
 
 class CartPage extends StatelessWidget {
   const CartPage({ Key key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: MyTheme.creamColor,
       appBar:AppBar(
           title:Title(color: Colors.black, child: Text('Cart')),
           centerTitle: true,
           
       ),
       body: Column(
         children: [
           _CartFul().p12().expand(),
           Divider(),
           _CardTotal(),
        
         ],
       ),
     );
   }
 }

 class _CardTotal extends StatefulWidget {
   const _CardTotal({ Key key }) : super(key: key);
 
   @override
   __CardTotalState createState() => __CardTotalState();
 }
 
 class __CardTotalState extends State<_CardTotal> {
   @override
   Widget build(BuildContext context) {
     return SizedBox(
       height: 200,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
                  "\$999".text.xl4.make(),
                  ElevatedButton(onPressed: (){}, child: "Buy".text.make().p16(),)
       ],),
     );
   }
 }

 class _CartFul extends StatefulWidget {
   const _CartFul({ Key key }) : super(key: key);
 
   @override
   __CartFulState createState() => __CartFulState();
 }
 
 class __CartFulState extends State<_CartFul> {
   @override
   Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: 5,
       itemBuilder: (context ,index){
         
         return  ListTile(
                trailing: IconButton(icon: Icon(Icons.remove_circle_outline_outlined),
                onPressed: (){},
                ),
                leading: Icon(Icons.done),
                title: "Item1".text.make(),



         );

       }
       
       
       
       );
   }
 }

