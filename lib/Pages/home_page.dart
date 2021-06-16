import 'package:category_app/Widgets/drawer.dart';
import 'package:category_app/Widgets/item_widgets.dart';
import 'package:category_app/models/catalog.dart';
import 'package:flutter/material.dart';
class CategoryApp extends StatelessWidget {
  const CategoryApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Category Apps'),
      ),
          body:Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(          itemCount: CatalogModel.items.length,

              itemBuilder: (BuildContext context, int index){
                           return    ItemWidget(item: CatalogModel.items[index],);
            }
            ),
          ),
      drawer: Mydrawer(),
    );
  }
}
