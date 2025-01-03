import 'dart:js';

import 'package:cloudmallapp/Screens/ResetPage.dart';
import 'package:cloudmallapp/Screens/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import "package:cloudmallapp/Screens/Homepage.dart";

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  String email = "";
  String password = "";
  allowUsertoLogin() async {
    const snackBar = SnackBar(
        duration: Duration(seconds: 5),
        content: Text(
          "Authenticating... Please wait",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent),
        ));
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(snackBar);
    User? currentUser;
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((fAuth) {
      currentUser = fAuth.user;
    }).catchError((onerror) {
      SnackBar snackBar = SnackBar(
          duration: const Duration(seconds: 5),
          content: Text(
            "Error occured ${onerror.toString()}",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent),
          ));
      ScaffoldMessenger.of(context as BuildContext).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
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
          const SizedBox(height: 30),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white)),
              child: const Row(
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
          const SizedBox(height: 20),
          const Text("Or", style: TextStyle(color: Colors.black87, fontSize: 16)),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 15),
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
                        child: TextFormField(
                          decoration: const InputDecoration(
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
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0, left: 15),
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
                            child: TextFormField(
                              decoration: const InputDecoration(
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
                    Get.to(const ResetPage());
                  },
                  child: const Text(
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(237, 4, 4, 116))),
              onPressed: () {
                allowUsertoLogin();

                Get.to(const Homepage());
              },
              child: const Text(
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
                child: const Row(
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
