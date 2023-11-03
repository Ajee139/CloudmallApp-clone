import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class DeliveryDet extends StatelessWidget {
  const DeliveryDet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            "Delivery Details",
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Details",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.87,
                          child: TextFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address Description",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.87,
                          child: TextFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Time",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.87,
                          child: TextFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.87,
                          child: TextFormField(
                            validator:
                                Validatorless.number("Value is not a number"),
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Order Note"),
                        SizedBox(width: 5),
                        Icon(Icons.help_outline_outlined)
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.today_outlined),
                      style: ButtonStyle(
                          iconColor: MaterialStatePropertyAll(Colors.blue)),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Items",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                          Text(
                            "#2500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Fee",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                          Text(
                            "#2500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Service Fee",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                          Text(
                            "#2500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                          Text(
                            "#2500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.85,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Complete Payment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
