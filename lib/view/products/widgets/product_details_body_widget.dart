import 'package:test_app/constants/app_packages.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({
    super.key,
    required this.products,
  });

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VerticalSizedBox(16),
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(products.image))),
          ),
          const VerticalSizedBox(30),
          CustomText(
            text: products.title,
            textStyle: context.textTheme.bodyLarge!
                .copyWith(color: AppColors.thirdColor),
          ),
          const VerticalSizedBox(16),
          CustomText(
            text: products.description,
            textAlign: TextAlign.start,
            textStyle: context.textTheme.bodyMedium!
                .copyWith(color: AppColors.thirdColor),
          ),
          const VerticalSizedBox(16),
          CustomText(
            text: 'Price: ${products.price}',
            textStyle: context.textTheme.bodyLarge!
                .copyWith(color: AppColors.red, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
