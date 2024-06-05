import 'package:test_app/constants/app_packages.dart';

class ProductDetailesScreen extends StatelessWidget {
  ProductsController productsController = ProductsController();
  final int index;
  final ProductModel products;

  ProductDetailesScreen({
    super.key,
    required this.products,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColors.white),
            onPressed: () {
              Get.back();
            },
          ),
          centerTitle: true,
          backgroundColor: AppColors.mainColor,
          title: CustomText(
              text: "Product Details",
              textStyle: context.textTheme.bodyLarge!
                  .copyWith(color: AppColors.white, fontSize: 22)),
        ),
        body: ProductDetailsBody(products: products));
  }
}
