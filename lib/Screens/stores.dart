import 'package:flutter/material.dart';

class store extends StatelessWidget {
  const store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            color: Colors.blue,
                            child: Image.asset("images/shopper-in-phone.png"),
                          ),
                        ),
                        Text("Pharmacies",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Drugs and personal care")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Colors.blue,
                            child: Image.asset(
                                "images/raw_foods%20cloud%20mall%208.jpg",
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text("Raw foods",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Uncooked foods, ...")
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            color: Colors.blue,
                            child: Image.asset(""),
                          ),
                        ),
                        Text("Pharmacies",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Drugs and personal care")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Colors.blue,
                            child: Image.asset(
                                "images/raw_foods%20cloud%20mall%208.jpg",
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text("Raw foods",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Uncooked foods, ...")
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            color: Colors.blue,
                            child: Image.asset("images/shopper-in-phone.png"),
                          ),
                        ),
                        Text("Pharmacies",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Drugs and personal care")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Colors.blue,
                            child: Image.asset(
                                "images/raw_foods%20cloud%20mall%208.jpg",
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text("Raw foods",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Uncooked foods, ...")
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            color: Colors.blue,
                            child: Image.asset("images/shopper-in-phone.png"),
                          ),
                        ),
                        Text("Pharmacies",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Drugs and personal care")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Colors.blue,
                            child: Image.asset(
                                "images/raw_foods%20cloud%20mall%208.jpg",
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text("Raw foods",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text("Uncooked foods, ...")
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    ));
  }
}
