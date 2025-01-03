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
  List pages = [const Home(), const store(), CartPage(), const Order()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Now",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: TextButton(
                        onPressed: () {},
                        child: const Row(
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
                              padding: EdgeInsets.only(left: 25.0),
                              child: Icon(Icons.keyboard_arrow_down_rounded),
                            )
                          ],
                        )),
                  )
                ],
              ),
              IconButton(
                  style: const ButtonStyle(
                      iconColor: WidgetStatePropertyAll(Colors.blue)),
                  onPressed: () {},
                  icon: const Icon(Icons.person_sharp))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
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
                  icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps_outage_rounded), label: "Orders")
            ]),
        drawer: Drawer(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: const Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
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
                      const Icon(Icons.person, color: Colors.black87),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Profile",
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
                      const Icon(Icons.wallet_rounded, color: Colors.black87),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {
                            Get.to(const Details());
                          },
                          child: const Text("Wallet",
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
                      const Icon(Icons.people_rounded, color: Colors.black87),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Group Buying",
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
                      const Icon(Icons.contact_phone, color: Colors.black87),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Address Book",
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
                      const Icon(Icons.settings, color: Colors.black87),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
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
                      const Icon(Icons.insert_invitation_sharp,
                          color: Colors.black87),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Invite friends",
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
                      const Icon(Icons.account_box_outlined,
                          color: Colors.black87),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {
                            Get.to(const AboutPage());
                          },
                          child: const Text("Contact Us/Help",
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
                      const Icon(Icons.logout, color: Colors.red),
                      const SizedBox(width: 30),
                      TextButton(
                          onPressed: () {
                            Get.replace(Loginpage());
                            Get.to(Loginpage());
                          },
                          child: const Text("Log out",
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
