import 'package:cloudmallapp/Screens/About.dart';
import 'package:cloudmallapp/Screens/FIrstPage.dart';
import 'package:cloudmallapp/Screens/ResetPage.dart';
import 'package:cloudmallapp/Screens/SignUp.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import "package:cloudmallapp/Screens/Homepage.dart";

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
      ),
      body: Container(
        child: Column(children: [
          SizedBox(height: 30),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              child: Row(
                children: [
                  Icon(Icons.adb_sharp),
                  SizedBox(width: 20),
                  Text("Login With Google",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Or", style: TextStyle(color: Colors.black87, fontSize: 16)),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 15),
                      child: Text(
                        "Email/Phone Number",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Your.email@example.com",
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.solid))),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0, left: 15),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 20, left: 10, right: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.remove_red_eye_rounded),
                                  hintText: "*********",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          style: BorderStyle.solid))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(ResetPage());
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(237, 4, 4, 116))),
              onPressed: () {
                Get.to(Homepage());
              },
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20),
            child: TextButton(
                onPressed: () {
                  Get.to(SignUpPage());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
