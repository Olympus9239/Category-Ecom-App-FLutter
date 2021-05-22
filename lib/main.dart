import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: CategoryApp(),
    );
  }
}
class CategoryApp extends StatelessWidget {
  const CategoryApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Center(
        child: Container(
          child: Text('Wecome to 30 days of Flutter'),
        ),
      ),
    );
  }
}
