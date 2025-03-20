import 'package:cloudmallapp/Models/ProductModel.dart';
import 'package:cloudmallapp/controllers/cart_Controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloudmallapp/Models/productData.dart';
import 'package:get/get.dart';

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
                height: MediaQuery.of(context).size.height * 0.25,
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
              ),
            ),
          ),

          // Search Bar Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_rounded),
                      hintText: "Search for products",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.view_column_rounded, size: 28),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Product Grid Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: LayoutBuilder(builder: (context, constraints) {
                // Calculate the number of columns based on screen width
                double screenWidth = constraints.maxWidth;
                int columns = (screenWidth / 150).floor();
                final cartController = Get.find<CartController>();
                return GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columns,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
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
                        child: Stack(
                          children: [
                            Positioned(
                              top: 30,
                              left: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  product.name,
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
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
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      Colors.transparent),
                                  foregroundColor:
                                      WidgetStateProperty.all(Colors.black),
                                ),
                                child: const Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                onPressed: () {
                                  cartController.addToCart(product);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          )
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
