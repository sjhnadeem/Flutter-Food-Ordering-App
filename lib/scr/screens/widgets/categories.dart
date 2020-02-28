import 'package:flutter/material.dart';

import '../../color.dart';

List<Category> catagoriesList = [
  Category(name: "Hotdog", image: "hotdog.png"),
  Category(name: "Burger", image: "burger.png"),
  Category(name: "Pizza", image: "pizza.png"),
  Category(name: "Cheese", image: "cheese.png"),
  Category(name: "Taco", image: "taco.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 120.0,
              child: Column(
                children: <Widget>[
                  Container(
                      width: 60.0,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              color: red[50],
                              offset: Offset(2.0, 6.0),
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            "assets/images/${catagoriesList[index].image}"),
                      )),
                  SizedBox(height: 10.0),
                  Text(catagoriesList[index].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final String image;
  Category({this.name, this.image});
}
