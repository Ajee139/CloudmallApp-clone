import 'package:cloudmallapp/Screens/SignUp.dart';
import 'package:cloudmallapp/Screens/Login.dart';
import 'package:flutter/material.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("SignUp or Login",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))),
        body: Container(
          child: Column(children: [
            Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset("images/CA.jpg")),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: const Center(
                child: Text(
                    "SignUp or login to continue\nshopping for your favorite items",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ));
                    },
                    style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color.fromARGB(255, 3, 8, 83)),
                    ),
                    child: const Text("Sign Up")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Loginpage();
                        },
                      ));
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.blueAccent),
                    )),
              ),
            ),
          ]),
        ));
  }
}
