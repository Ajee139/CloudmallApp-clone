import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact Us & Help")),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text("Help",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Terms and Conditions",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black87,
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("FAQ's",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black87,
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Privacy Policy",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black87,
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Chat with us",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 19, 200),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Icon(
                                Icons.message_outlined,
                                color: Colors.black87,
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
              child: Column(
            children: [
              const Text("Contact Us",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: Row(
                  children: [
                    const Icon(Icons.phone),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "+2349065440091",
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0, left: 15.0),
                child: Row(
                  children: [
                    const Icon(Icons.email_sharp),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "support@cloudmall.africa",
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        )),
                  ],
                ),
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, left: 15.0),
            child: Row(
              children: [
                const Icon(Icons.camera_front),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "cloudmallng",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, left: 15.0),
            child: Row(
              children: [
                const Icon(Icons.baby_changing_station_rounded),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "cloudmallng",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, left: 15.0),
            child: Row(
              children: [
                const Icon(Icons.facebook_sharp),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "cloudmallng",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, left: 15.0),
            child: Row(
              children: [
                const Icon(Icons.link),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "cloudmallng",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
