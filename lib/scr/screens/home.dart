import 'package:flutter/material.dart';
import 'package:food_ordering_app/scr/screens/widgets/categories.dart';
// import 'package:food_ordering_app/scr/screens/widgets/small_floating_button.dart';
import 'package:food_ordering_app/scr/screens/widgets/popular_food.dart';
import 'package:food_ordering_app/scr/screens/widgets/best_food.dart';

import '../color.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "What would you like to eat?",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.notifications_none), onPressed: () {}),
                  Positioned(
                      top: 10.0,
                      right: 12.0,
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20.0)),
                      ))
                ],
              )
            ],
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: grey[300],
                        offset: Offset(2.0, 1.0),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                      decoration: InputDecoration(
                          hintText: "Find Food & Resturant",
                          border: InputBorder.none)),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                )),
          ),
          SizedBox(height: 5.0),
          Categories(),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Popular food",
              style: TextStyle(fontSize: 22.0, color: grey),
            ),
          ),
          Popular(),
        ],
      )),
      bottomNavigationBar: Container(
          color: white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/home.png",
                  width: 28.0,
                  height: 28.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/target.png",
                  width: 28.0,
                  height: 28.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/shopping-bag.png",
                  width: 28.0,
                  height: 28.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 28.0,
                  height: 28.0,
                ),
              ),
            ],
          )),
    );
  }
}
