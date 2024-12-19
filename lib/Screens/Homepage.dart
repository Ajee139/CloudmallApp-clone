import "package:cloudmallapp/Screens/About.dart";
import "package:cloudmallapp/Screens/Login.dart";
import "package:cloudmallapp/Screens/dealspage.dart";
import "package:cloudmallapp/Screens/details.dart";
import "package:cloudmallapp/Screens/home.dart";
import "package:cloudmallapp/Screens/orders.dart";
import "package:cloudmallapp/Screens/stores.dart";
import "package:cloudmallapp/cart.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  int myCurrentIndex = 0;
  List pages = const [home(), store(), Deals(), Cart(), Order()];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Now",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Home",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Icon(Icons.keyboard_arrow_down_rounded),
                            )
                          ],
                        )),
                  )
                ],
              ),
              IconButton(
                  style: ButtonStyle(
                      iconColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {},
                  icon: Icon(Icons.person_sharp))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            currentIndex: myCurrentIndex,
            onTap: (index) {
              setState(() {
                myCurrentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home ",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.store_outlined), label: "Stores"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people_alt_sharp,
                  ),
                  label: "Deals"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps_outage_rounded), label: "Orders")
            ]),
        drawer: Drawer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                backgroundImage: AssetImage("images/CA.jpg")),
                          ),
                        ),
                        Text(
                          "Ajijolaoluwa Adesoji",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Balance: ${"0"}",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.black87),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: Text("Profile",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.wallet_rounded, color: Colors.black87),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {
                            Get.to(Details());
                          },
                          child: Text("Wallet",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.people_rounded, color: Colors.black87),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: Text("Group Buying",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.contact_phone, color: Colors.black87),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: Text("Address Book",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings, color: Colors.black87),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.insert_invitation_sharp,
                          color: Colors.black87),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: Text("Invite friends",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.account_box_outlined, color: Colors.black87),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {
                            Get.to(AboutPage());
                          },
                          child: Text("Contact Us/Help",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      SizedBox(width: 30),
                      TextButton(
                          onPressed: () {
                            Get.replace(Loginpage());
                            Get.to(Loginpage());
                          },
                          child: Text("Log out",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: pages[myCurrentIndex]);
  }
}
