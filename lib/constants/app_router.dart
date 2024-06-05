import 'package:test_app/constants/app_packages.dart';

class AppRouter {
  late int index;

  static final routes = [
//--------------------------Auth-----------------------------

    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: AppRoutes.categoriesScreen,
      page: () => CategoriesScreen(),
      binding: CategoriesBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    /*    GetPage(
      name: AppRoutes.productDetailesScreen,
      page: () => ProductDetailesScreen(
       
      ),
      binding: ProductBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
    ), */
  ];
}
