import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";
import 'package:flutter/rendering.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10, bottom: 10),
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/burger-with-cheese-e1616580735881%20cloud%20mall%20image%203.jpg"),
                              fit: BoxFit.fitWidth)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/fresh%20pepper%20cloud%20mall%20image%207.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/Fruits%20store%20cloud%20mall%20image%205.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/grocery-items%20cloud%20mall%20image%2011.jpg"),
                              fit: BoxFit.fill)),
                    ),
                  ],
                  options: CarouselOptions(
                      initialPage: 0,
                      height: 150,
                      viewportFraction: 1.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800))),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: SearchBar(
                      leading: Icon(Icons.search_rounded),
                      hintText: "Search for products",
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.view_column_rounded)
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Row(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 100,
                                        child: Image.asset(
                                            "images/burger-with-cheese-e1616580735881%20cloud%20mall%20image%203.jpg",
                                            fit: BoxFit.cover),
                                      ),
                                      Row(
                                        children: [
                                          Text("Coke 50cl pack"),
                                          Text("#2500.0")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Prize ..."),
                                          Text("Open")
                                        ],
                                      ),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.blue)),
                                          onPressed: () {},
                                          child: Text(
                                            'Add to cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Row(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 100,
                                        child: Image.asset(
                                            "images/burger-with-cheese-e1616580735881%20cloud%20mall%20image%203.jpg",
                                            fit: BoxFit.cover),
                                      ),
                                      Row(
                                        children: [
                                          Text("Coke 50cl pack"),
                                          Text("#2500.0")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Prize ..."),
                                          Text("Open")
                                        ],
                                      ),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.blue)),
                                          onPressed: () {},
                                          child: Text(
                                            'Add to cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Row(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 100,
                                        child: Image.asset(
                                            "images/burger-with-cheese-e1616580735881%20cloud%20mall%20image%203.jpg",
                                            fit: BoxFit.cover),
                                      ),
                                      Row(
                                        children: [
                                          Text("Coke 50cl pack"),
                                          Text("#2500.0")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Prize ..."),
                                          Text("Open")
                                        ],
                                      ),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.blue)),
                                          onPressed: () {},
                                          child: Text(
                                            'Add to cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Row(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 100,
                                        child: Image.asset(
                                            "images/burger-with-cheese-e1616580735881%20cloud%20mall%20image%203.jpg",
                                            fit: BoxFit.cover),
                                      ),
                                      Row(
                                        children: [
                                          Text("Coke 50cl pack"),
                                          Text("#2500.0")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Prize ..."),
                                          Text("Open")
                                        ],
                                      ),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.blue)),
                                          onPressed: () {},
                                          child: Text(
                                            'Add to cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
