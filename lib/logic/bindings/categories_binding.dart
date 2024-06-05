import 'package:get/get.dart';
import 'package:test_app/logic/controllers/categories/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(() => CategoriesController());
  }
}
