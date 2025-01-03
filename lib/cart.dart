import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloudmallapp/controllers/cart_Controller.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          // Cart Items List
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartController.cartItems[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(
                          'Price: \$${item.price.toStringAsFixed(2)} x ${item.quantity}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () =>
                                cartController.decreaseQuantity(index),
                          ),
                          Text('${item.quantity}'),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () =>
                                cartController.increaseQuantity(index),
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ),

          // Total Price Display
          Obx(() => Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$${cartController.totalPrice.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
