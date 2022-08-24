import 'package:get/get.dart';
import 'package:shoppy/screens/product_model.dart';

class CartController extends GetxController{

  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    }
    else{
      _products[product] = 1;
      print("Item added");
    }

    Get.snackbar(
      "Product Added",
      "You have added the ${product.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

}