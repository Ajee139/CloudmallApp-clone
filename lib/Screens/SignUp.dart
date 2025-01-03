import 'package:cloudmallapp/Screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';


class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  TextEditingController userFirstNameController = TextEditingController();
  TextEditingController userLastNameController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  User? currentUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "SignUp With Email",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " First Name",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: userFirstNameController,
                          validator: Validatorless.regex(
                              RegExp(r'^[a-zA-Z]+$'), "Invalid input"),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid)),
                            hintText: "Your First Name",
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " Last Name",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: userLastNameController,
                          validator: Validatorless.regex(
                              RegExp(r'^[a-zA-Z]+$'), "Invalid input"),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid)),
                            hintText: "Your Last Name",
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " Phone Number",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: userPhoneController,
                          validator:
                              Validatorless.number("Value is not a number"),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid)),
                            hintText: "Phone Number",
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " Email",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: userEmailController,
                          validator: Validatorless.multiple([
                            Validatorless.email("Please enter a valid email!"),
                            Validatorless.required("This is a required field!")
                          ]),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid)),
                            hintText: "Your Email",
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " Password",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: userPasswordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid)),
                            hintText: "Password",
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 5, 5, 184))),
                    onPressed: () {
                      var userFirstName = userFirstNameController.text.trim();
                      var userSecondName = userFirstNameController.text.trim();
                      var userEmail = userEmailController.text.trim();
                      var userPhone = userPhoneController.text.trim();
                      var userPassword = userPasswordController.text.trim();

                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: userEmail, password: userPassword)
                          .then((value) => {
                                log("User created"),
                                FirebaseFirestore.instance
                                    .collection("users")
                                    .doc(currentUser!.uid)
                                    .set({
                                  "userName": userFirstName + userSecondName,
                                  "userEmail": userEmail,
                                  "userPhone": userPhone,
                                  "userPassword": userPassword,
                                  "Created at": DateTime.now(),
                                  "Userid": currentUser!.uid
                                }),
                                log("Data Added!")
                              });
                      Get.to(Loginpage());
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Loginpage();
                  }));
                },
                child: const Text(
                  "Already have an account?       Login",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}
