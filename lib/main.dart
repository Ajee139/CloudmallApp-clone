import 'package:cloudmallapp/Screens/FIrstPage.dart';
import 'package:cloudmallapp/controllers/cart_Controller.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";


void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  Get.put(CartController()); // Initialize the CartController globally
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstpage(),
    );
  }
}
