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
          body: Center(
        child: Container(
          child: Text('Wecome to 31 days of Flutter'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
