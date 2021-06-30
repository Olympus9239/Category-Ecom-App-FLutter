import 'package:category_app/Widgets/themes.dart';
import 'package:category_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class HomeDetail extends StatelessWidget {

  final Item catalog;

  const HomeDetail({Key key, @required this.catalog}) : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
        color: Colors.white10,
        child: ButtonBar(
                           
                         alignment: MainAxisAlignment.spaceBetween,
                         children:[
                          
                            '\$${catalog.price}'.text.xl2.bold.make(),
                            ElevatedButton(
                             style: ButtonStyle(
                               shape: MaterialStateProperty.all(StadiumBorder()),
                             ),
                              onPressed: (){
                              }, child: "Buy".text.xl2.make())
                         ]
                       ).p16(),
      ),
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(),
             body: SafeArea(
               bottom: false,
                            child: Column(
                 
                 children: [
                   Hero( 
                     tag: Key(catalog.id.toString()),

                     child: Image.network(catalog.image)).h32(context).py16(),
                     Expanded(child: 
                     VxArc(
                       
                       height: 30.0,
                       edge:  VxEdge.TOP,
                       arcType: VxArcType.CONVEY,
                      child: Container(
                        width: context.screenWidth,
                        child: Column(
                          children:[
                            catalog.name.text.color(MyTheme.darkBluishCOlor).xl4.bold.make(),
               catalog.desc.text.make(),
                          ]
                        ).p64(),
                         color:Colors.white,
                       ),
                     ))
                 ],
               ),
             ),
    );
  }
}
