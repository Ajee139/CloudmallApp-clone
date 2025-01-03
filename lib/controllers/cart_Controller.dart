import 'package:get/get.dart';
import 'package:cloudmallapp/Models/ProductModel.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  // Compute the total price dynamically
  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));

  // Add a product to the cart
  void addToCart(Product product) {
    // Check if the product already exists in the cart
    int index = cartItems.indexWhere((item) => item.id == product.id);
    if (index != -1) {
      // If it exists, increase the quantity
      cartItems[index].quantity++;
      cartItems.refresh();
    } else {
      // If it doesn't exist, add it
      cartItems.add(product);
    }
  }

  // Remove a product from the cart
  void removeFromCart(Product product) {
    cartItems.removeWhere((item) => item.id == product.id);
  }

  // Increase the quantity of a product
  void increaseQuantity(int index) {
    cartItems[index].quantity++;
    cartItems.refresh();
  }

  // Decrease the quantity of a product
  void decreaseQuantity(int index) {
    if (cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
      cartItems.refresh();
    } else {
      // Remove the item if quantity reaches 0
      cartItems.removeAt(index);
    }
  }
}
