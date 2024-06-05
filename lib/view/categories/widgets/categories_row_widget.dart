import 'package:test_app/constants/app_packages.dart';

class CategoriesRowWidget extends StatelessWidget {
  const CategoriesRowWidget({
    super.key,
    required this.categoriesController,
  });

  final CategoriesController categoriesController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedTextKit(animatedTexts: [
          TyperAnimatedText(
            "Categories",
            textStyle: TextStyle(
                color: AppColors.thirdColor,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ]),
        Container(
          height: 40.0,
          margin: const EdgeInsets.only(top: 16, bottom: 8),
          child: ListView.builder(
              itemCount: categoriesController.categories.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Obx(
                    () => InkWell(
                      onTap: () {
                        categoriesController.changeCategories(index);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.mainColor),
                          borderRadius: BorderRadius.circular(8.0),
                          color:
                              index == categoriesController.currentIndex.value
                                  ? AppColors.mainColor
                                  : Colors.transparent,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          categoriesController.categories[index],
                          style: TextStyle(
                              color: index ==
                                      categoriesController.currentIndex.value
                                  ? AppColors.white
                                  : AppColors.mainColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )).animate().fade().slideX(
              begin: -1, duration: const Duration(milliseconds: 250)),
        ),
      ],
    );
  }
}
