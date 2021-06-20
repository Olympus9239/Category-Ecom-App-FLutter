import 'dart:convert';

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
     var  productData=decodeData["prodcuts"];
     print(productData);

       }    


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Category Apps'),
      ),
          body:Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder( itemCount: CatalogModel.items.length,

              itemBuilder: (BuildContext context, int index){
                           return    ItemWidget(item: CatalogModel.items[index],);
            }
            ),
          ),
      drawer: Mydrawer(),
    );
  }
}
