import 'package:test_app/constants/app_packages.dart';

class ProductsController extends GetxController {
  ProductsRepository productsRepository = ProductsRepository();
  List products = [];
  late ProductModel productModel;

  var loading = false.obs;

  loadProductsFromRepo(String categoryName) async {
    loading(true);
    products = await productsRepository.loadProductsFromApi(categoryName);

    loading(false);
  }
}














/* var productList = <ProductModel>[].obs;
  var isLoading = true.obs;
  void getProducts() async {
    var products = await ProductServices.getProducts();

    try {
      isLoading(true);
      if (products.isNotEmpty) {
        productList.addAll(products);
      }
    } finally {
      isLoading(true);
    }
  } */
