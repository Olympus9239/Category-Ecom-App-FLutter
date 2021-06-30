import 'dart:convert';

import 'package:category_app/Pages/home_detail.dart';
import 'package:category_app/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:category_app/Widgets/drawer.dart';
import 'package:category_app/Widgets/item_widgets.dart';
import 'package:category_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class CategoryApp extends StatefulWidget {
  const CategoryApp({Key key}) : super(key: key);

  @override
  _CategoryAppState createState() => _CategoryAppState();
}

class _CategoryAppState extends State<CategoryApp> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
       loadData()async{
         
    final catalogJson=  await rootBundle.loadString("assets/catalog.json");
      // print(catalogJson);
      final decodeData =  jsonDecode(catalogJson);
     // print(decodeData);
     var  productData=decodeData["products"];
    // print(productData);
    CatalogModel.items=List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();  
    setState(() {
      
    });


       }    


  @override
  Widget build(BuildContext context) {
    return Scaffold(

             body: SafeArea(
                            child: Container(
                              padding: Vx.m32,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                       CatalogHeader(),
                       if(CatalogModel.items!=null&&CatalogModel.items.isNotEmpty)
                       CatalogList().expand()
                       else 
                       Center(child:CircularProgressIndicator())
                   ],

                 ),
               ),
             ),           


      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Category Apps'),
      // ),
      //     body:Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: (CatalogModel.items!=null&&CatalogModel.items.isNotEmpty)?
      //       GridView.builder(
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           crossAxisSpacing: 16,
      //           ),
      //       itemBuilder: (context,index){
      //         final item = CatalogModel.items[index];
      //            return Card
                 
      //            (clipBehavior: Clip.antiAlias,
      //              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
      //              child: GridTile(child:Image.network(item.image),
      //              header: Text(item.name),
      //              footer: Text(item.price.toString()),
                   
      //              ),
      //              );
                   
      //       },
      //       itemCount: CatalogModel.items.length,)
      //        ListView.builder( itemCount: CatalogModel.items.length,

      //          itemBuilder: (BuildContext context, int index){
      //                       return    ItemWidget(item: CatalogModel.items[index],);
      //        }
      //        )
      //       :Center(
      //         child: CircularProgressIndicator(),
      //       ),
      //     ),
      // drawer: Mydrawer(),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                        "Flipkart".text.bold.xl5.color(Colors.blue).make(),
                        "Trending Products".text.xl2.color(Colors.red).make(),
                   ],
    );
  }
}
class CatalogList extends StatelessWidget {
  const CatalogList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder:(context,index){
        final catalog= CatalogModel.items[index];
            return CatalogItem(catalog: catalog);

      } 
      );
  }
}
class CatalogItem extends StatelessWidget {

final Item  catalog;

  const CatalogItem({Key key, @required this.catalog})  : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return VxBox(
    child: Container(
      padding: Vx.m4,
      child: Row(
         children: [
        InkWell(
          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetail(catalog: catalog,)));
},
          child: Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image))),
        Expanded(child:Container(
          padding: Vx.m8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               catalog.name.text.color(MyTheme.darkBluishCOlor).xl.bold.make(),
               catalog.desc.text.make(),
                     ButtonBar(
                       alignment: MainAxisAlignment.spaceBetween,
                       children:[
                         
                          '\$${catalog.price}'.text.xl.bold.make(),
                          ElevatedButton(
                           style: ButtonStyle(
                             shape: MaterialStateProperty.all(StadiumBorder()),
                           ),
                            onPressed: (){
                            }, child: "Buy".text.make())
                       ]
                     )
          ],),
        ) 
      ),
      ],
      ),
    )

    ).roundedLg.color(Colors.white).square(180).make().py16();
  }
}
class CatalogImage extends StatelessWidget {
    final String image;

  const CatalogImage({Key key,@required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return       Image.network(image,).box.roundedLg.p8.color(MyTheme.creamColor).make().py16().w32(context);

  }
}