import 'package:test_app/constants/app_packages.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsController.products.length,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 16),
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.grey,
            border: Border.all(color: AppColors.mainColor)),
        child: InkWell(
          onTap: () {
            Get.to(() => ProductDetailesScreen(
                  index: index,
                  products:
                      ProductModel.fromJson(productsController.products[index]),
                ));
          },
          child: Container(
            height: 130,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          productsController.products[index]['image']),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productsController.products[index]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.mainColor),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Expanded(
                          child: Text(
                            productsController.products[index]['description'],
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "\$${productsController.products[index]['price']}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.red),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    )
        .animate()
        .fade()
        .slideX(begin: -1, duration: const Duration(milliseconds: 400));
  }
}
