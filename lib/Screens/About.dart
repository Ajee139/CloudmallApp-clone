import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us & Help")),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text("Help",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
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
          SizedBox(height: 15),
          Container(
              child: Column(
            children: [
              Text("Contact Us",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    TextButton(
                        onPressed: () {},
                        child: Text(
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
                    Icon(Icons.email_sharp),
                    TextButton(
                        onPressed: () {},
                        child: Text(
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
                Icon(Icons.camera_front),
                TextButton(
                    onPressed: () {},
                    child: Text(
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
                Icon(Icons.baby_changing_station_rounded),
                TextButton(
                    onPressed: () {},
                    child: Text(
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
                Icon(Icons.facebook_sharp),
                TextButton(
                    onPressed: () {},
                    child: Text(
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
                Icon(Icons.link),
                TextButton(
                    onPressed: () {},
                    child: Text(
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
