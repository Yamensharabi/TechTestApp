import 'package:test_app/constants/app_packages.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesController categoriesController = CategoriesController();

  CategoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        leading: Container(),
        backgroundColor: AppColors.mainColor,
        title: CustomText(
            text: "Ecommerce App",
            textStyle: context.textTheme.bodyLarge!
                .copyWith(color: AppColors.white, fontSize: 22)),
      ),
      body: Obx(() {
        if (categoriesController.loading.value) {
          return const CircularIndicatorWidget();
        }
        if (categoriesController.categories.isEmpty) {
          return Center(
              child: CustomText(
            text: "No categories found",
            textStyle: context.textTheme.bodyLarge!
                .copyWith(color: AppColors.mainColor),
          ));
        }
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CategoriesRowWidget(categoriesController: categoriesController),
              Expanded(
                child: Obx(
                  () {
                    if (productsController.loading.value) {
                      return const CircularIndicatorWidget();
                    }
                    if (productsController.products.isEmpty) {
                      return const Center(child: Text("No products found"));
                    }
                    return const ProductList();
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
