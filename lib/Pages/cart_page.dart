import 'package:category_app/Widgets/themes.dart';
import 'package:category_app/models/cart.dart';
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
        final _cart=CartModel();

     return SizedBox(
       height: 200,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
                  "\$${_cart.totalPrice}".text.xl4.make(),
                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not Supported".text.make()));
                  }, child: "Buy".text.make().w10(context).p16(),)
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
   final _cart=CartModel();
   @override
   Widget build(BuildContext context) {
     return _cart.items.isEmpty?"Nothing to Show".text.xl3.makeCentered():
       ListView.builder(
       itemCount: _cart.items?.length,
       itemBuilder: (context ,index){
         
         return  ListTile(
                trailing: IconButton(icon: Icon(Icons.remove_circle_outline_outlined),
                onPressed: (){
                  _cart.remove(_cart.items[index]); 
                  setState(() {
                     
                  });

                },
                ),
                leading: Icon(Icons.done),
                title: _cart.items[index].name.text.make(),



         );

       }
       
       
       
       );
   }
 }

