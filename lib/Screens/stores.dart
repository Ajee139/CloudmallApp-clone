import 'package:flutter/material.dart';
import "package:cloudmallapp/Models/productData.dart";

class store extends StatelessWidget {
  const store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in a row
              crossAxisSpacing: 8.0, // Space between columns
              mainAxisSpacing: 8.0, // Space between rows
              // childAspectRatio: 3 / 4, // Aspect ratio of each card
            ),
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.vertical(top: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(product.imagePath),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(children: [
                        Positioned(
                          top: 30,
                          left: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              product.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   top: 50,
                        //   left: 0,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: Text(
                        //       "#${product.price.toStringAsFixed(2)}",
                        //       style: TextStyle(
                        //           fontWeight: FontWeight.bold,
                        //           color: Colors.white,
                        //           fontSize: 15),
                        //     ),
                        //   ),
                        // ),
                        // Positioned(
                            // bottom: 10,
                            // left: 30,
                            // child: ElevatedButton(
                            //   style: ButtonStyle(
                            //       backgroundColor: WidgetStatePropertyAll(
                            //           Colors.transparent),
                            //       foregroundColor:
                            //           WidgetStatePropertyAll(Colors.black)),
                            //   child: Text(
                            //     "Add to cart",
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //       fontWeight: FontWeight.bold,
                            //       fontSize: 15,
                            //     ),
                            //   ),
                            //   onPressed: () {},
                            // ))
                      ]))

// Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(

//                           height: MediaQuery.of(context).size.height *
//                               0.2, // Dynamic height
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.vertical(top: Radius.circular(10)),
//                             image: DecorationImage(
//                               image: AssetImage(product.imagePath),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 product.name,
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(height: 4),
//                               Text("#${product.price.toStringAsFixed(2)}"),
//                               SizedBox(height: 8),
//                               ElevatedButton(
//                                 style: ButtonStyle(
//                                   backgroundColor:
//                                       MaterialStateProperty.all(Colors.blue),
//                                 ),
//                                 onPressed: () {
//                                   // Action for adding to cart
//                                 },
//                                 child: Text(
//                                   'Add to cart',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 15,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),

                  );
            },
          ),
        ),
      ),
    );
  }
}
