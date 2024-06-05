import 'package:test_app/constants/app_packages.dart';

class LoginController extends GetxController {
  bool isVisibilty = false;
  bool isVisibilty2 = false;

  void visibilty() {
    isVisibilty = !isVisibilty;

    update();
  }

  void visibilty2() {
    isVisibilty2 = !isVisibilty2;

    update();
  }

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void submitLogin() {
    final username = usernameController.text;
    final password = passwordController.text;

    if (username == 'yamen' && password == 'yamen123') {
      Get.toNamed(AppRoutes.categoriesScreen);
    } else {
      Get.defaultDialog(
          title: 'Error!',
          middleText: 'Wrong username or password',
          titlePadding: const EdgeInsets.all(12));
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
