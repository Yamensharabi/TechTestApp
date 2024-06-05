import 'package:get/get.dart';
import 'package:test_app/logic/controllers/products/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductsController());
  }
}
