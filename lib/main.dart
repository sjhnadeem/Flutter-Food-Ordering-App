import 'package:flutter/material.dart';
import 'package:food_ordering_app/scr/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}
