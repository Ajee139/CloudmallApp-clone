import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:cloudmallapp/Models/productData.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Carousel Section
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: CarouselSlider(
              items: [
                _buildCarouselItem(
                    "images/burger-with-cheese-e1616580735881%20cloud%20mall%20image%203.jpg"),
                _buildCarouselItem(
                    "images/fresh%20pepper%20cloud%20mall%20image%207.jpg"),
                _buildCarouselItem(
                    "images/Fruits%20store%20cloud%20mall%20image%205.jpg"),
                _buildCarouselItem(
                    "images/grocery-items%20cloud%20mall%20image%2011.jpg"),
                _buildCarouselItem("images/Cn1.jpeg"),
              ],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height *
                    0.25, // Responsive height
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
            ),
          ),

          // Search Bar Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: SearchBar(
                    leading: Icon(Icons.search_rounded),
                    hintText: "Search for products",
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.view_column_rounded, size: 28),
              ],
            ),
          ),

          SizedBox(height: 20),

          // Product Grid Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                                BorderRadius.vertical(top: Radius.circular(10)),
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
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50,
                              left: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "#${product.price.toStringAsFixed(2)}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left: 30,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.transparent),
                                      foregroundColor:
                                          WidgetStatePropertyAll(Colors.black)),
                                  child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  onPressed: () {},
                                ))
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
        ],
      ),
    );
  }

  // Helper method to build carousel items
  Widget _buildCarouselItem(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
