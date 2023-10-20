import 'package:flutter/material.dart';

class Deals extends StatelessWidget {
  const Deals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo-text-white.png",
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 150,)
            ],
          ),
        ),
      ),
    );
  }
}
