import 'package:cloudmallapp/delivery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  int itemNo = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 80,
                              height: 150,
                              child: Image.asset(
                                  "images/burger-with-cheese-e1616580735881%20cloud%20mall%20image%203.jpg"),
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Double decker Burger"),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "#2500",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.location_on_outlined)),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("Orente Grills"))
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.delete_outline)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.today_outlined)),
                                    Container(
                                      child: Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (itemNo >= 1) {
                                                    itemNo -= 1;
                                                  }
                                                });
                                              },
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30),
                                              )),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "${itemNo}",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  itemNo += 1;
                                                });
                                              },
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30),
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Total Cost",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "#2500",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    Get.to(DeliveryDet());
                  },
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
